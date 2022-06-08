import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'nws_chat_kit_method_channel.dart';

abstract class NwsChatKitPlatform extends PlatformInterface {
  /// Constructs a NwsChatKitPlatform.
  NwsChatKitPlatform() : super(token: _token);

  static final Object _token = Object();

  static NwsChatKitPlatform _instance = MethodChannelNwsChatKit();

  /// The default instance of [NwsChatKitPlatform] to use.
  ///
  /// Defaults to [MethodChannelNwsChatKit].
  static NwsChatKitPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NwsChatKitPlatform] when
  /// they register themselves.
  static set instance(NwsChatKitPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
