import 'package:FangYiShell/shared/Shared.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() async => SharedService());
  runApp(
    GetMaterialApp(
      title: "FangYiShell",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
