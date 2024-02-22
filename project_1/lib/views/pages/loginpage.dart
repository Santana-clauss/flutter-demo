
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_1/config/const.dart';
import 'package:project_1/views/customButton.dart';
import 'package:project_1/views/customText.dart';
import 'package:project_1/views/customTextField.dart';



class loginPage extends StatelessWidget {
  const loginPage({super.key});
    

  @override
  Widget build(BuildContext context) {
    TextEditingController userNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return  Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
            
            Colors.green.shade800,
            Colors.green.shade600,
            Colors.green.shade400,
          ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Image.asset("images/finanza1.png",height: 100,width: 100,),
                  ),
                  SizedBox(height: 100,),
                  Padding(padding: EdgeInsets.all(35)),
                  SizedBox(height: 20,),
              
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Container(
                      //height: double.infinity,
                      width: 350,
                      decoration: BoxDecoration(
                        color: appWhiteColor,
                        borderRadius: BorderRadius.circular(16),
                        
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            customText(label: "Username"),
                            customTextField(userFieldController: userNameController,icon: Icons.person,),
                            customText(label: "Password"),
                            customTextField(userFieldController: passwordController,icon: Icons.lock,hideText: true,),
                            SizedBox(height: 25,),
                            customText(label: "Forgot password?"),
                            customButton(buttonLabel: "Login"),
                            customText(label: "Sign up",labelColor: Colors.green.shade900,)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              
              ),
            ],
          ),
        ),
        
      ), 
      
    );
  }
}