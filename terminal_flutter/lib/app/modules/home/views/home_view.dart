import 'package:FangYiShell/ffi/rust_ffi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:FangYiShell/ffi/load.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  void _incrementCounter() async {
    FangyiShellSdk value = await NativeModule.api.createInstance();
    int a = await NativeModule.api.test(sdk: value);
    print(a);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
            child: const Text('123'),
            onPressed: () {
              _incrementCounter();
            }),
      ),
    );
  }
}
