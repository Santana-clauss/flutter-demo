import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_1/views/customText.dart';
import 'package:project_1/views/customTextField.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController userNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.green.shade800,
              Colors.green.shade600,
              Colors.green.shade400,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              ClipOval(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Image.asset(
                      "images/finanza1.png",
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20), // Adjusted spacing
              Container(
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      customText(label: "Username"),
                      customTextField(
                        userFieldController: userNameController,
                        icon: Icons.person,
                      ),
                      SizedBox(height: 20),
                      customText(label: "Password"),
                      customTextField(
                        userFieldController: passwordController,
                        icon: Icons.lock,
                        hideText: true,
                      ),
                      SizedBox(height: 25),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Login"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green.shade800,
                        ),
                      ),
                      SizedBox(height: 10),
                      customText(
                        label: "Forgot password?",
                      ),
                      SizedBox(height: 10),
                      customText(
                        label: "Sign up",
                        labelColor: Colors.green.shade900,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
