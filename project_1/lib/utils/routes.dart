import 'package:get/get.dart';
import 'package:project_1/views/calculator.dart';
import 'package:project_1/views/home.dart';
import 'package:project_1/views/login.dart';
import 'package:project_1/views/registration.dart';

class Routes{
  static var routes=[
    GetPage(name: "/", page: () => Home()),
    GetPage(name: "/login", page: ()=>login()),
    GetPage(name: "/calculator", page: ()=>Calculator()),
    GetPage(name: "/register", page: ()=>Register())
  ];
}