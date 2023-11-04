import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon4/app/data/services/api_service.dart';
import 'package:hackathon4/app/data/services/auth_service.dart';
import 'package:hackathon4/app/data/services/storage_service.dart';
import 'package:hackathon4/app/routes/app_pages.dart';

void main() async {
  await initServices();
  runApp(const MyApp());
}

Future<void> initServices() async {
  log('init services');
  await Get.putAsync(() => StorageService().init());
  await Get.putAsync(() => ApiService().init());
  await Get.putAsync(() => AuthService().init());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 72, 0, 255)),
          useMaterial3: true,
        ),
        initialRoute: AppPages.INITIAL, //AppPages.INITIAL,
        getPages: AppPages.routes,
      ),
    );
  }
}
