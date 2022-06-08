
import 'nws_chat_kit_platform_interface.dart';

class NwsChatKit {
  Future<String?> getPlatformVersion() {
    return NwsChatKitPlatform.instance.getPlatformVersion();
  }
}
