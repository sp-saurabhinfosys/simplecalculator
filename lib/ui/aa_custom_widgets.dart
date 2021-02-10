import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;

  CustomTextField({this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textAlign: TextAlign.end,
      inputFormatters: [DecimalTextInputFormatter()],
      keyboardType: TextInputType.number,
      validator: (c) {
        if (c.isEmpty) {
          return "Please enter value";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "0",
        enabledBorder: new OutlineInputBorder(
            borderSide: new BorderSide(color: Colors.black, width: 2.0)),
        border: new OutlineInputBorder(
            borderSide: new BorderSide(color: Colors.teal)),
      ),
    );
  }
}

class DecimalTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final regEx = RegExp(r"^\d*\.?\d*");
    String newString = regEx.stringMatch(newValue.text) ?? "";
    return newString == newValue.text ? newValue : oldValue;
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback onClick;
  final Color color;
  final String title;

  CustomButton({this.onClick, this.color, this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          height: 80,
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: RaisedButton(
              onPressed: onClick,
              child: Text(
                title,
                style: TextStyle(color: Colors.white,fontSize: 30),
              ),
              color: color,
            ),
          )),
    );
  }
}
