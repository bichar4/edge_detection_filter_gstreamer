#include <gtk/gtk.h>
#include <gst/gst.h>

// Structe to add all our information so we can pass it to callback
typedef struct _Customdata
{
  GstElement *pipeline;
  GstElement *source;
  GstElement *demuxer;
  GstElement *decoder;
  GstElement *convert;
  GstElement *myfilter;
  GstElement *resample;
  GstElement *capsfilter;
  GstElement *sink;
  gchar *filename;
  gboolean isFilterActivated;
  GtkWidget *window;
} CustomData;

static void button_clicked(GtkButton *, CustomData *);
static void play_cb(GtkButton *, CustomData *);
static void pause_cb(GtkButton *, CustomData *);
static void activate_clicked(GtkButton *, CustomData *);
static void deactivate_clicked(GtkButton *, CustomData *);
//handler for the pad-added signal
static void pad_added_handler(GstElement *src, GstPad *pad, CustomData *data);

static void create_ui(CustomData *data)
{
  GtkWidget *window, *vbox, *button, *button2, *pause_btn, *activate, *deactivate;

  data->window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
  gtk_window_set_title(GTK_WINDOW(data->window), "Open a File");
  gtk_container_set_border_width(GTK_CONTAINER(data->window), 10);

  gtk_widget_set_size_request(data->window, 200, 100);

  vbox = gtk_hbox_new(TRUE, 5);

  button = gtk_button_new_with_label("Open File...");
  button2 = gtk_button_new_with_label("Play");
  pause_btn = gtk_button_new_with_label("Pause");
  activate = gtk_button_new_with_label("Activate");
  deactivate = gtk_button_new_with_label("deactivate");

  gtk_box_pack_start(GTK_BOX(vbox), button, TRUE, TRUE, 2);
  gtk_box_pack_start(GTK_BOX(vbox), button2, TRUE, TRUE, 2);
  gtk_box_pack_start(GTK_BOX(vbox), pause_btn, TRUE, TRUE, 2);

  gtk_box_pack_start(GTK_BOX(vbox), activate, TRUE, TRUE, 2);
  gtk_box_pack_start(GTK_BOX(vbox), deactivate, TRUE, TRUE, 2);

  g_signal_connect(G_OBJECT(button), "clicked", G_CALLBACK(button_clicked), data);
  g_signal_connect(G_OBJECT(button2), "clicked", G_CALLBACK(play_cb), data);
  g_signal_connect(G_OBJECT(pause_btn), "clicked", G_CALLBACK(pause_cb), data);
  g_signal_connect(G_OBJECT(activate), "clicked", G_CALLBACK(activate_clicked), data);
  g_signal_connect(G_OBJECT(deactivate), "clicked", G_CALLBACK(deactivate_clicked), data);

  gtk_container_add(GTK_CONTAINER(data->window), vbox);

  gtk_widget_show_all(data->window);
}

int main(int argc, char *argv[])
{
  CustomData data;
  GstStateChangeReturn ret;
  GstBus *bus;

  gtk_init(&argc, &argv);

  /* Initialize GStreamer */
  gst_init(&argc, &argv);

  /* Initialize our data structure */
  memset(&data, 0, sizeof(data));

  //Create Pipeline
  //create the elements

  data.source = gst_element_factory_make("filesrc", "source");
  data.demuxer = gst_element_factory_make("qtdemux", "demuxer");
  data.decoder = gst_element_factory_make("decodebin", "decoder");
  data.convert = gst_element_factory_make("videoconvert", "convert");
  data.capsfilter = gst_element_factory_make("capsfilter","capsfilter");
  data.myfilter = gst_element_factory_make("myfilter", "myfilter");
  data.sink = gst_element_factory_make("autovideosink", "sink");
  data.isFilterActivated = FALSE;

  //create an empty pipeline
  data.pipeline = gst_pipeline_new("test-pipeline");

  if (!data.pipeline || !data.source || !data.sink || !data.decoder || !data.convert || !data.demuxer || !data.myfilter)
  {
    g_printerr("Not all elements could be created.\n");
    return -1;
  }

 
  //build the pipeline
  gst_bin_add_many(GST_BIN(data.pipeline), data.source, data.demuxer, data.decoder, data.myfilter,data.capsfilter, data.convert, data.sink, NULL);
  if (gst_element_link_many(data.convert,data.capsfilter, data.sink, NULL) != TRUE)
  {
    g_printerr("Elements could not be linked.\n");
    gst_object_unref(data.pipeline);
    return -1;
  }

    GstCaps *caps;
   caps = gst_caps_new_simple ("video/x-raw",
          "format", G_TYPE_STRING, "BGRx",
          NULL);
    g_object_set(G_OBJECT(data.capsfilter),"caps",caps,NULL);
    gst_caps_unref (caps);

  
  // /* Connect to the pad-added signal */
  g_signal_connect(data.decoder, "pad-added", G_CALLBACK(pad_added_handler), &data);
  create_ui(&data);

  gtk_main();

  /* Free resources */
  gst_element_set_state(data.pipeline, GST_STATE_NULL);
  gst_object_unref(data.pipeline);
  return 0;
}

static void
button_clicked(GtkButton *button, CustomData *data)
{
  GtkWidget *dialog;

  dialog = gtk_file_chooser_dialog_new("Open File...", GTK_WINDOW(data->window), GTK_FILE_CHOOSER_ACTION_OPEN,
                                       ("_Cancel"), GTK_RESPONSE_CANCEL,
                                       ("_Open"), GTK_RESPONSE_ACCEPT,
                                       NULL);

  gint result = gtk_dialog_run(GTK_DIALOG(dialog));

  if (result == GTK_RESPONSE_ACCEPT)
  {
    data->filename = gtk_file_chooser_get_filename(GTK_FILE_CHOOSER(dialog));
    //gtk_button_set_label(button, data->filename);
    g_object_set(data->source, "location", data->filename, NULL);
  }
  if (gst_element_link(data->source, data->decoder) != TRUE)
  {
    g_printerr("Elements could not be linked.\n");
    gst_object_unref(data->pipeline);
    return -1;
  }

  gtk_widget_destroy(dialog);
}
static void
play_cb(GtkButton *button, CustomData *data)
{
  g_print("playing file: %s", data->filename);
  gst_element_set_state(data->pipeline, GST_STATE_PLAYING);
}

/* This function is called when the PAUSE button is clicked */
static void pause_cb(GtkButton *button, CustomData *data)
{
  gst_element_set_state(data->pipeline, GST_STATE_PAUSED);
}

static void activate_clicked(GtkButton *button, CustomData *data)
{
  if (!(data->isFilterActivated))
  {
    gst_element_set_state(data->pipeline, GST_STATE_PAUSED);
    g_print("activated clicked\n");
    gst_element_unlink(data->capsfilter, data-> sink);
    gst_element_sync_state_with_parent(data->myfilter);
    if(gst_element_link_many(data->capsfilter,data->myfilter,data->sink,NULL)){
      g_print("Succesfully added custom filter to pipeline");
    }
    data->isFilterActivated = TRUE;
    
    gst_element_set_state(data->pipeline, GST_STATE_PLAYING);
  }
}

static void deactivate_clicked(GtkButton *button, CustomData *data)
{
  
  if (data->isFilterActivated)
  {
    gst_element_set_state(data->pipeline, GST_STATE_PAUSED);
    g_print("deactivated clicked\n");
  //buggy code
    gst_element_unlink(data->myfilter,data->sink);
    gst_element_unlink(data->capsfilter,data->myfilter);

    if(gst_element_link(data->capsfilter,data->sink)){
      g_print("\n successfully changed the pipeline form convert -> sink \n");
    }
    data->isFilterActivated = FALSE;
    gst_element_set_state(data->pipeline, GST_STATE_PLAYING);
  }
}
//this function will be called  by the pad added signal
static void pad_added_handler(GstElement *src, GstPad *new_pad, CustomData *data)
{
  GstPad *sink_pad = gst_element_get_static_pad(data->convert, "sink");
  GstPadLinkReturn ret;
  GstCaps *new_pad_caps = NULL;
  GstStructure *new_pad_struct = NULL;
  const gchar *new_pad_type = NULL;

  g_print("Received new pad '%s' from '%s':\n", GST_PAD_NAME(new_pad), GST_ELEMENT_NAME(src));

  /* If our converter is already linked, we have nothing to do here */
  if (gst_pad_is_linked(sink_pad))
  {
    g_print("We are already linked. Ignoring.\n");
    goto exit;
  }

  /* Check the new pad's type */
  new_pad_caps = gst_pad_get_current_caps(new_pad);
  new_pad_struct = gst_caps_get_structure(new_pad_caps, 0);
  new_pad_type = gst_structure_get_name(new_pad_struct);
  if (!g_str_has_prefix(new_pad_type, "video/x-raw"))
  {
    g_print("It has type '%s' which is not raw audio. Ignoring.\n", new_pad_type);
    goto exit;
  }

  /* Attempt the link */
  ret = gst_pad_link(new_pad, sink_pad);
  if (GST_PAD_LINK_FAILED(ret))
  {
    g_print("Type is '%s' but link failed.\n", new_pad_type);
  }
  else
  {
    g_print("Link succeeded (type '%s').\n", new_pad_type);
  }

exit:
  /* Unreference the new pad's caps, if we got them */
  if (new_pad_caps != NULL)
    gst_caps_unref(new_pad_caps);

  /* Unreference the sink pad */
  gst_object_unref(sink_pad);
}