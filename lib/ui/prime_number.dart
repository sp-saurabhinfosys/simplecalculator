import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simplecalculator/methods/calculator.dart';
import 'package:simplecalculator/methods/fibonacci.dart';
import 'package:simplecalculator/methods/prime.dart';
import 'package:simplecalculator/ui/aa_custom_widgets.dart';

class PrimeNumber extends StatefulWidget {
  @override
  _PrimeNumberState createState() => _PrimeNumberState();
}

class _PrimeNumberState extends State<PrimeNumber> {
  TextEditingController n1 = new TextEditingController();

  int num1;

  final _formKey = GlobalKey<FormState>();
  String results;
  convert(){
    num1 = int.parse(n1.text);

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

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(results==null?"":"${results}",style: TextStyle(fontSize: 30),),
                ),

                Row(
                  children: [
                    CustomButton(
                      color: Colors.blue,
                      title: "Check",
                      onClick: () {
                        if (_formKey.currentState.validate()) {
                          convert();
                          results =prime(num1);
                          fibo(num1);
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
