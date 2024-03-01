import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  TextEditingController? controller;
  Color? labelColor;
  String? label;

   CustomTextFiled({this.controller,this.label,this.labelColor});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller:controller,
      decoration: InputDecoration(
          label: Text(label??""),
          labelStyle: TextStyle(
            color: labelColor ?? Colors.green,
          )
      ),
    );
  }
}

