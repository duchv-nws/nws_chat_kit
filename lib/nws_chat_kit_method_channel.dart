import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'nws_chat_kit_platform_interface.dart';

/// An implementation of [NwsChatKitPlatform] that uses method channels.
class MethodChannelNwsChatKit extends NwsChatKitPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('nws_chat_kit');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
