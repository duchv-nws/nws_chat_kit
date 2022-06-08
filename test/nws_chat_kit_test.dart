import 'package:flutter_test/flutter_test.dart';
import 'package:nws_chat_kit/nws_chat_kit.dart';
import 'package:nws_chat_kit/nws_chat_kit_platform_interface.dart';
import 'package:nws_chat_kit/nws_chat_kit_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNwsChatKitPlatform 
    with MockPlatformInterfaceMixin
    implements NwsChatKitPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final NwsChatKitPlatform initialPlatform = NwsChatKitPlatform.instance;

  test('$MethodChannelNwsChatKit is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNwsChatKit>());
  });

  test('getPlatformVersion', () async {
    NwsChatKit nwsChatKitPlugin = NwsChatKit();
    MockNwsChatKitPlatform fakePlatform = MockNwsChatKitPlatform();
    NwsChatKitPlatform.instance = fakePlatform;
  
    expect(await nwsChatKitPlugin.getPlatformVersion(), '42');
  });
}
