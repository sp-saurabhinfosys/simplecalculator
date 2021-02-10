import 'package:flutter/material.dart';
import 'package:simplecalculator/ui/calculator.dart';
import 'package:simplecalculator/ui/main_calc_ui.dart';
import 'package:simplecalculator/ui/prime_number.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainCalc(),
    );
  }
}
