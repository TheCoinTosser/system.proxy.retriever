#import "SystemProxyPlugin.h"
#import <system.proxy.retriever/system.proxy.retriever-Swift.h>

@implementation SystemProxyPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSystemProxyPlugin registerWithRegistrar:registrar];
}
@end
