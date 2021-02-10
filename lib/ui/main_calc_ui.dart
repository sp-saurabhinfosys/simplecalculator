import 'package:flutter/material.dart';
import 'package:simplecalculator/ui/aa_custom_widgets.dart';

class MainCalc extends StatefulWidget {
  @override
  _MainCalcState createState() => _MainCalcState();
}

class _MainCalcState extends State<MainCalc> {
  String getString(String n) {
    print(fullNumber);
    setState(() {});
    if (n == "Clear") {
      fullNumber = "";
      num1 = "";
      num2 = "";
      operand = "";
      result = 0.0;
    }
    if(n == "x2")
      {
        result = double.parse(num1) * double.parse(num1);
        fullNumber = result.toString();
      }
    if (n == "1" ||
        n == "2" ||
        n == "3" ||
        n == "4" ||
        n == "5" ||
        n == "6" ||
        n == "7" ||
        n == "8" ||
        n == "9" ||
        n == "0") {
      fullNumber = fullNumber + n;
      if (operand == "") {
        num1 = fullNumber;
        print("num1 " + num1);
      } else if(operand!="") {
        num2 = "$num2$n";
        print("num2 $num2");
      }


    } else if (n == "X" || n == "/" || n == "+" || n == "-") {
      operand = n;
      fullNumber = "";
      print("operand");
    }else if(n=="=")
      {
        if(operand=="+")
          {
            result = double.parse(num1) + double.parse(num2);
            fullNumber = result.toString();
          }
        if(operand=="-")
        {
          result = double.parse(num1) - double.parse(num2);
          fullNumber = result.toString();
        }
        if(operand=="/")
        {
          result = double.parse(num1) / double.parse(num2);
          fullNumber = result.toString();
        }
        if(operand=="X")
        {
          result = double.parse(num1) * double.parse(num2);
          fullNumber = result.toString();
        }
        if(operand=="")
        {
          result = double.parse(num1) + double.parse(num2);
          fullNumber = result.toString();
        }
      }

  }

  String fullNumber = "";
  String num1 = "";
  String num2 = "";
  String operand = "";
  double result=0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                  child: Text(
                fullNumber,
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.end,
              )),
            ],
          ),
          Row(
            children: [
              CustomButton(
                title: "7",
                color: Colors.black,
                onClick: () {
                  getString("7");
                },
              ),
              CustomButton(
                title: "8",
                color: Colors.black,
                onClick: () {
                  getString("8");
                },
              ),
              CustomButton(
                title: "9",
                color: Colors.black,
                onClick: () {
                  getString("9");
                },
              ),
              CustomButton(
                title: "X",
                color: Colors.black,
                onClick: () {
                  getString("X");
                },
              ),
            ],
          ),
          Row(
            children: [
              CustomButton(
                title: "4",
                color: Colors.black,
                onClick: () {
                  getString("4");
                },
              ),
              CustomButton(
                title: "5",
                color: Colors.black,
                onClick: () {
                  getString("5");
                },
              ),
              CustomButton(
                title: "6",
                color: Colors.black,
                onClick: () {
                  getString("6");
                },
              ),
              CustomButton(
                title: "-",
                color: Colors.black,
                onClick: () {
                  getString("-");
                },
              ),
            ],
          ),
          Row(
            children: [
              CustomButton(
                title: "1",
                color: Colors.black,
                onClick: () {
                  getString("1");
                },
              ),
              CustomButton(
                title: "2",
                color: Colors.black,
                onClick: () {
                  getString("2");
                },
              ),
              CustomButton(
                title: "3",
                color: Colors.black,
                onClick: () {
                  getString("3");
                },
              ),
              CustomButton(
                title: "+",
                color: Colors.black,
                onClick: () {
                  getString("+");
                },
              ),
            ],
          ),
          Row(
            children: [
              CustomButton(
                title: "x2",
                color: Colors.black,
                onClick: () {
                  getString("x2");
                },
              ),
              CustomButton(
                title: "0",
                color: Colors.black,
                onClick: () {
                  getString("0");
                },
              ),
              CustomButton(
                title: ".",
                color: Colors.black,
                onClick: () {
                  getString(".");
                },
              ),
              CustomButton(
                title: "/",
                color: Colors.black,
                onClick: () {
                  getString("/");
                },
              ),
            ],
          ),
          Row(
            children: [
              CustomButton(
                title: "Clear",
                color: Colors.black,
                onClick: () {
                  getString("Clear");
                },
              ),
              CustomButton(
                title: "=",
                color: Colors.black,
                onClick: () {
                  getString("=");
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
