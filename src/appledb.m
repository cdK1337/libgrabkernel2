//  appledb.m
#import <Foundation/Foundation.h>
#import <sys/utsname.h>
#if !TARGET_OS_OSX
#import <UIKit/UIKit.h>
#endif
#import <sys/sysctl.h>
#import "utils.h"

// Заменим константу на указанный URL прошивки
#define FIXED_FIRMWARE_URL @"https://updates.cdn-apple.com/2022FallFCS/patches/012-91580/C89641F0-BBAB-4547-86E3-EBEB5EB08544/com_apple_MobileAsset_SoftwareUpdate/151bb9a8ea9fc62aab330be0772beece7d3eec38.zip"

NSString *getFirmwareURL(bool *isOTA) {
    // Здесь игнорируем все логику получения прошивки и возвращаем фиксированный URL
    *isOTA = YES; // Предполагаем, что это не OTA-прошивка
    return FIXED_FIRMWARE_URL;
}
