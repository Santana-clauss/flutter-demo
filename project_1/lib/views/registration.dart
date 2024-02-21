
import 'package:flutter/material.dart';
import 'package:project_1/config/const.dart';
import 'package:project_1/views/customButton.dart';
import 'package:project_1/views/customText.dart';
import 'package:project_1/views/customTextField.dart';

void main() {
  runApp(const MaterialApp(
    home: Register(),
    debugShowCheckedModeBanner: false,
  ));
}

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController FirstNameController = TextEditingController();
    TextEditingController LastNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneNumberController = TextEditingController();
    TextEditingController renterPasswordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text(" "),
        backgroundColor: primaryColor,
        foregroundColor: appWhiteColor,
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(200.0),
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
                    label: "Register here",
                    labelColor: primaryColor,
                    fontSize: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const customText(label: "First Name"),
              customTextField(
                userFieldController: FirstNameController,
                icon: Icons.person,
                hint: "Enter your first name",
              ),
              const customText(label: "Last Name"),
              customTextField(
                userFieldController: LastNameController,
                icon: Icons.person,
                hint: "Enter your last Name",
              ),
              const customText(label: "Email"),
              customTextField(
                userFieldController: emailController,
                icon: Icons.email,
                hint: "Enter your email ",
              ),
              const customText(label: "Phone Number"),
              customTextField(
                userFieldController: phoneNumberController,
                icon: Icons.phone,
                hint: "Enter your phone number",
              ),
              const customText(label: "Password"),
              customTextField(
                userFieldController: passwordController,
                icon: Icons.lock,
                hideText: true,
                isPassword: true,
                hint: "Password",
              ),
              const customText(label: "Reenter password"),
              customTextField(
                userFieldController: renterPasswordController,
                icon: Icons.lock,
                hideText: true,
                isPassword: true,
                hint: "Reenter password",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // GestureDetector(
                  //   child: customText(
                  //     label: "Recover",
                  //     labelColor: primaryColor,
                  //   ),
                  //   onTap: () {
                  //     print("Recovered password");
                  //   },
                  // ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              customButton(buttonLabel:"submit"),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  customText(label: "if you have an account"),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    child: customText(
                      label: "login here",
                      labelColor: primaryColor,
                    ),
                    onTap: () {
                      print("login sucessfull");
                    },
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
}
