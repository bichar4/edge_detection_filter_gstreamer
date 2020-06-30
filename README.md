# edge_detection_filter_gstreamer
- install gstreamer plugin using the [link](https://gstreamer.freedesktop.org/documentation/installing/on-linux.html?gi-language=c)
- Copy myfilter/build/libgstmyfilter.so from to /usr/local/lib/gstreamer-1.0 path(create directory if necessary) and is export following lines to bashrc.
  ``` export GST_PLUGIN_PATH=/usr/local/lib/gstreamer-1.0 ``` 
- run build/gstreamer_01 from terminal
