import 'package:FangYiShell/ffi/load.dart';
import 'package:FangYiShell/ffi/rust_ffi.dart';
import 'package:get/get.dart';

class SharedService extends GetxService {
  FangyiShellSdk? sdk;

  @override
  Future<void> onInit() async {
    // 初始化SDK并加载到全局模块
    sdk = await NativeModule.api.createInstance();
    super.onInit();
  }
}
