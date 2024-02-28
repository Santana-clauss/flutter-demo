// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/config/const.dart';
import 'package:project_1/utils/preferences.dart';
import 'package:project_1/views/customButton.dart';
import 'package:project_1/views/customText.dart';
import 'package:project_1/views/customTextField.dart';
TextEditingController userNameController = TextEditingController();
TextEditingController passwordController = TextEditingController();
preferences myPref=preferences();
class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    myPref.getValue("username").then((value) => {
      userNameController.text=value
    });
    
    return Scaffold(
      appBar: AppBar(
        title: const Text(" My App"),
        backgroundColor: primaryColor,
        foregroundColor: appWhiteColor,
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/star.png",
                    height: 100,
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customText(
                    label: "login Screen",
                    labelColor: primaryColor,
                    fontSize: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const customText(label: "Username"),
              customTextField(
                userFieldController: userNameController,
                icon: Icons.person,
                hint: "Enter email or phone number",
              ),
              const customText(label: "Password"),
              customTextField(
                userFieldController: passwordController,
                icon: Icons.lock,
                hideText: true,
                isPassword: true,
                hint: "Password",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  customText(label: "Forgot password?"),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    child: customText(
                      label: "Recover",
                      labelColor: primaryColor,
                    ),
                    onTap: () {
                      print("Recovered password");
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              customButton(
                buttonLabel: "login",
                action: gotoLogin,
              ),
              SizedBox(
                height: 10,
              ),
              // MaterialButton(onPressed: (){
              //   Get.toNamed("/calculator");
              // },child: Text('login'),
              // color: primaryColor,

              // height: 60,
              // minWidth: double.maxFinite
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  customText(label: "No account yet?"),
                  SizedBox(
                    width: 10,
                  ),
                  customText(
                    label: "Register here",
                    labelColor: primaryColor,
                    
                  ),
                ],
              )
            ],
          ),
        ),
      ),

      //floatingActionButton: FloatingActionButton(onPressed: onPressed),
    );
  }

  void gotoLogin() {
    myPref.setValue("username",userNameController.text);
    Get.offAllNamed("/home");
  }
}
