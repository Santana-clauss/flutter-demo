// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/config/const.dart';
import 'package:project_1/controllers/homecontroller.dart';
HomeController homeController=Get.put(HomeController());

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar:CurvedNavigationBar(
        color: primaryColor,
        backgroundColor: appWhiteColor,
        buttonBackgroundColor: primaryColor,
        items: [
        Icon(Icons.home,color: appWhiteColor,),
        Icon(Icons.notifications, color: appWhiteColor),
        Icon(Icons.person, color: appWhiteColor),
        Icon(Icons.settings, color: appWhiteColor),
      ],
      onTap: (index){
        homeController.updateSelectedPage(index);
      },) ,
    );
  }
}