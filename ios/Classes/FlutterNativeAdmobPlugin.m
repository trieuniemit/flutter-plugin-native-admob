#import "NativeFlutterAdmobPlugin.h"
#import <native_flutter_admob/native_flutter_admob-Swift.h>

@implementation NativeFlutterAdmobPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNativeFlutterAdmobPlugin registerWithRegistrar:registrar];
}
@end
