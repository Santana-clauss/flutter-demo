import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/config/const.dart';
class customText extends StatelessWidget {
  final String label;
  final Color labelColor;
  final double fontSize;
  final VoidCallback? action;
  const customText({
    super.key, 
    required this.label,
    this.labelColor=appGreyColor,
    this.action,
    this.fontSize=16});

  @override
  Widget build(BuildContext context) {
    return Text(
      
      label,
      style: TextStyle(
          color: labelColor,fontSize:fontSize, fontWeight: FontWeight.bold),
    );
  }
}
