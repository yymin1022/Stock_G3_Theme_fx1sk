#!/sbin/sh
echo -e '' >> /system/build.prop
echo -e '#' >> /system/build.prop
echo -e '#SplitView Options' >> /system/build.prop
echo -e '#' >> /system/build.prop
echo -e 'ro.lge.capp_splitwindow=true' >> /system/build.prop
echo -e 'persist.splitwindow.support_all=true' >> /system/build.prop
echo -e '' >> /system/build.prop
