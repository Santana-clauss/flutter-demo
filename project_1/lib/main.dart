
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/utils/routes.dart';
import 'package:project_1/views/pages/loginpage.dart';
void main() {
  runApp(GetMaterialApp(
   home: loginPage(),
  //  initialRoute: "/",
    debugShowCheckedModeBanner: false,
  //   getPages: Routes.routes,
  ));
}

