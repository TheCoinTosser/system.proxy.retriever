#import "SystemProxyPlugin.h"
#if __has_include(<system.proxy.retriever/system.proxy.retriever-Swift.h>)
#import <system.proxy.retriever/system.proxy.retriever-Swift.h>
#else
#import "system.proxy.retriever-Swift.h"
#endif

@implementation SystemProxyPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSystemProxyPlugin registerWithRegistrar:registrar];
}
@end
