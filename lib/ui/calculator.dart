import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simplecalculator/methods/calculator.dart';
import 'package:simplecalculator/ui/aa_custom_widgets.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController n1 = new TextEditingController();
  TextEditingController n2 = new TextEditingController();
  double num1;
  double num2;
  final _formKey = GlobalKey<FormState>();
  double results;
  convert(){
  num1 = double.parse(n1.text);
  num2 = double.parse(n2.text);
  setState(() {

  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextField(controller: n1,),
                SizedBox(height: 10,),
                CustomTextField(controller: n2,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(results==null?"Result :":"Result : ${results.toStringAsFixed(2)}",style: TextStyle(fontSize: 30),),
                ),
                Row(
                  children: [
                    CustomButton(
                      color: Colors.indigoAccent,
                      title: "Addition",
                      onClick: () {
                        if (_formKey.currentState.validate()) {
                          convert();
                          results =add(num1, num2);
                        }
                      },
                    ),
                    CustomButton(
                      color: Colors.purple,
                      title: "Subtraction",
                      onClick: () {
                        if (_formKey.currentState.validate()) {
                          convert();
                          results =sub(num1, num2);
                        }
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomButton(
                      color: Colors.black,
                      title: "Multiplication",
                      onClick: () {
                        if (_formKey.currentState.validate()) {
                          convert();
                          results =multiplication(num1, num2);
                        }
                      },
                    ),
                    CustomButton(
                      color: Colors.green,
                      title: "Division",
                      onClick: () {
                        if (_formKey.currentState.validate()) {
                          convert();
                          if(num2 ==0)
                            {
                              results = 0;
                            }
                          results =divide(num1, num2);
                        }
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomButton(
                      color: Colors.blue,
                      title: "Modulo",
                      onClick: () {
                        if (_formKey.currentState.validate()) {
                          convert();
                          results =modulo(num1, num2);
                        }
                      },
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
