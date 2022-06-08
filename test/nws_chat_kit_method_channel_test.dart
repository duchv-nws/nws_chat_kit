import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nws_chat_kit/nws_chat_kit_method_channel.dart';

void main() {
  MethodChannelNwsChatKit platform = MethodChannelNwsChatKit();
  const MethodChannel channel = MethodChannel('nws_chat_kit');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
