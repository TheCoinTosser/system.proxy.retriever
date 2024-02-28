#import "SystemProxyPlugin.h"
#import <system_proxy_retriever/system_proxy_retriever-Swift.h>

@implementation SystemProxyPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSystemProxyPlugin registerWithRegistrar:registrar];
}
@end
