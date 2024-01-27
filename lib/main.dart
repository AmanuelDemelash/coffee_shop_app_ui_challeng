import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/constant.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primaryColor:Constant.primColor,
        backgroundColor: Constant.backColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: Constant.appBarColor,
          elevation: 0
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Constant.primColor,
            padding:const EdgeInsets.all(20)
          )
        )

      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
