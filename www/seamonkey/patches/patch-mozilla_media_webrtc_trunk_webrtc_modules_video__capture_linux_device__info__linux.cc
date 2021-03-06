$NetBSD: patch-mozilla_media_webrtc_trunk_webrtc_modules_video__capture_linux_device__info__linux.cc,v 1.2 2013/09/28 14:37:05 ryoon Exp $

--- mozilla/media/webrtc/trunk/webrtc/modules/video_capture/linux/device_info_linux.cc.orig	2013-09-16 18:26:51.000000000 +0000
+++ mozilla/media/webrtc/trunk/webrtc/modules/video_capture/linux/device_info_linux.cc
@@ -26,10 +26,30 @@
 #else
 #include <linux/videodev2.h>
 #endif
+#ifdef HAVE_LIBV4L2
+#include <libv4l2.h>
+#endif
 
 #include "ref_count.h"
 #include "trace.h"
 
+#ifdef HAVE_LIBV4L2
+#define open   v4l2_open
+#define close  v4l2_close
+#define dup    v4l2_dup
+#define ioctl  v4l2_ioctl
+#define mmap   v4l2_mmap
+#define munmap v4l2_munmap
+#endif
+
+#ifdef HAVE_LIBV4L2
+#define open	v4l2_open
+#define close	v4l2_close
+#define dup	v4l2_dup
+#define ioctl	v4l2_ioctl
+#define mmap	v4l2_mmap
+#define munmap	v4l2_munmap
+#endif
 
 namespace webrtc
 {
@@ -137,6 +157,11 @@ WebRtc_Word32 DeviceInfoLinux::GetDevice
     memset(deviceNameUTF8, 0, deviceNameLength);
     memcpy(cameraName, cap.card, sizeof(cap.card));
 
+    if (cameraName[0] == '\0')
+    {
+        sprintf(cameraName, "Camera at /dev/video%d", deviceNumber);
+    }
+
     if (deviceNameLength >= strlen(cameraName))
     {
         memcpy(deviceNameUTF8, cameraName, strlen(cameraName));
