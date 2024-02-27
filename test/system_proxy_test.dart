import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_proxy/system_proxy.dart';

void main() {
  const MethodChannel channel = MethodChannel('system.proxy.retriever');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return {'host': '127.0.0.1', 'port': '8899'};
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getProxySettings', () async {
    Map<String, String> proxy =
        await (SystemProxy.getProxySettings() as FutureOr<Map<String, String>>);

    expect(proxy['host'], '127.0.0.1');
    expect(proxy['port'], '8899');
  });
}
