#import "NwsChatKitPlugin.h"
#if __has_include(<nws_chat_kit/nws_chat_kit-Swift.h>)
#import <nws_chat_kit/nws_chat_kit-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "nws_chat_kit-Swift.h"
#endif

@implementation NwsChatKitPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNwsChatKitPlugin registerWithRegistrar:registrar];
}
@end
