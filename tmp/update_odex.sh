#!/sbin/sh

bcp="/system/framework/core.jar:/system/framework/conscrypt.jar:/system/framework/okhttp.jar:/system/framework/core-junit.jar:/system/framework/bouncycastle.jar:/system/framework/ext.jar:/system/framework/framework.jar:/system/framework/framework2.jar:/system/framework/telephony-common.jar:/system/framework/voip-common.jar:/system/framework/mms-common.jar:/system/framework/android.policy.jar:/system/framework/services.jar:/system/framework/apache-xml.jar:/system/framework/webviewchromium.jar:/system/framework/telephony-msim.jar:/system/framework/com.lge.frameworks.jar:/system/framework/WfdCommon.jar:/system/framework/org.codeaurora.Performance.jar"
export LD_LIBRARY_PATH=/system/lib:/system/vendor/lib

/tmp/busybox rm -f /system/framework/telephony-common.odex
/tmp/dexopt-wrapper /system/framework/telephony-common.jar /system/framework/telephony-common.odex $bcp
/tmp/busybox dd if=/system/framework/telephony-common.orig.odex of=/system/framework/telephony-common.odex bs=1 count=20 skip=52 seek=52 conv=notrunc
/tmp/busybox cp /system/framework/telephony-common.orig.jar /system/framework/telephony-common.jar

/tmp/busybox rm -f /system/framework/telephony-common.orig.odex
/tmp/busybox rm -f /system/framework/telephony-common.orig.jar
/tmp/busybox rm -f /system/framework/com.lge.frameworks.odex
/tmp/dexopt-wrapper /system/framework/com.lge.frameworks.jar /system/framework/com.lge.frameworks.odex $bcp
/tmp/busybox dd if=/system/framework/com.lge.frameworks.orig.odex of=/system/framework/com.lge.frameworks.odex bs=1 count=20 skip=52 seek=52 conv=notrunc
/tmp/busybox cp /system/framework/com.lge.frameworks.orig.jar /system/framework/com.lge.frameworks.jar

/tmp/busybox rm -f /system/framework/com.lge.frameworks.orig.odex
/tmp/busybox rm -f /system/framework/com.lge.frameworks.orig.jar
