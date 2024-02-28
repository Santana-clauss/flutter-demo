// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/config/const.dart';
import 'package:project_1/controllers/calculatorcontroller.dart';
import 'package:project_1/utils/database.dart';
import 'package:project_1/views/customText.dart';
import 'package:project_1/views/customTextField.dart';



class Calculator extends StatelessWidget {
      TextEditingController num1Controller = TextEditingController();
      TextEditingController num2Controller = TextEditingController();
      TextEditingController nameController = TextEditingController();
      CalculatorController calculatorController=Get.put(CalculatorController());
      MyDatabase db=MyDatabase();
  @override
  Widget build(BuildContext context) {
    return   Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          customTextField(userFieldController: nameController),
          SizedBox(height: 10,),
          customTextField(userFieldController: num1Controller),
          SizedBox(height: 10,),
          customTextField(userFieldController: num2Controller),
          SizedBox(height: 10,),
          ElevatedButton(onPressed:() async {
            double a=double.parse(num1Controller.text);
            double b = double.parse(num2Controller.text);
            String name=nameController.text;
            calculatorController.updateName(name);
            calculatorController.updateValues(a, b);
            double s=a+b;
            calculatorController.updateSum(s);
            await db.openDB();
            db.writeRec(12,"santana");
            print("The sum is ${calculatorController.sum}");
          },
          child:Text("calculate"),
          ),
         // customButton(buttonLabel: "calculate"),
          SizedBox( height: 10,),
          Obx(()=>customText(label:"Hello ${calculatorController.name} the sum of ${calculatorController.a} and ${calculatorController.b} is ${calculatorController.sum}")),
        ],),
      
    );
  }
}