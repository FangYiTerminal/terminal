import 'package:FangYiShell/ffi/load.dart';
import 'package:FangYiShell/shared/Shared.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  void _incrementCounter() async {
    final SharedService shared = Get.find();
    int a = await NativeModule.api.test(sdk: shared.sdk!);
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
