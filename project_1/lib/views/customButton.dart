// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:project_1/config/const.dart';
import 'package:project_1/views/customText.dart';

class customButton extends StatelessWidget {
  final String buttonLabel;
  final VoidCallback? action;
  const customButton({
    super.key,
    
    required this.buttonLabel,
    this.action
  });

  //final TextEditingController userNameController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: action,
        child: customText(
          label: buttonLabel,
          labelColor: appWhiteColor,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          elevation: 10,
          padding: const EdgeInsets.all(20),
          shadowColor: primaryColor,
        

        ),
        );
  }
}
