import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_5/constant/constant.dart';
import 'package:flutter_application_5/widgets/castmbuton.dart';
import '';

class Firstscreen extends StatefulWidget {
  const Firstscreen({Key? key}) : super(key: key);

  @override
  State<Firstscreen> createState() => FirstscreenState();
}

class FirstscreenState extends State<Firstscreen> {
  String exp = "";
  String history = "";
  double num1 = 0;
  double num2 = 0;
  String op = "";

  void nunclik(String btntext) {
    if (btntext == "AC") {
      setState(() {
        exp = "";
        history = "";
      });
      num1 = 0;
      num2 = 0;
    } else if (btntext == "C") {
      setState(() {
        exp = "";
      });
    } else if (btntext == "+" ||
        btntext == "*" ||
        btntext == "-" ||
        btntext == "/" ||
        btntext == "%") {
      op = btntext;
      num1 = double.parse(exp);
      setState(() {
        exp = "";
        history = num1.toString();
        history += btntext;
      });
    } else if (btntext == ".") {
      if (exp.contains(".")) {
      } else {
        setState(() {
          exp += btntext;
        });
      }
    } else if (btntext == "=") {
      num2 = double.parse(exp);
      history += exp;
      switch (op) {
        case '+':
          {
            exp = (num1 + num2).toString();
          }
          break;
        case '-':
          {
            exp = (num1 - num2).toString();
          }
          break;
        case '*':
          {
            exp = (num1 * num2).toString();
          }
          break;
        case '/':
          {
            num2 == 0
                ? exp = "unvaled by zerw"
                : exp = (num1 / num2).toString();
          }
          break;
        case '%':
          {
            exp = (num1 % num2).toString();
          }
          break;
          defaulte:
          break;
      }
      setState(() {
        exp;
      });
    } else {
      setState(() {
        exp += btntext;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              margin: constant1.textmarg,
              alignment: constant1.textliment,
              child: Text(history, style: constant1.style1)),
          Divider(
            color: Colors.grey,
            thickness: 5,
          ),
          Container(
            margin: constant1.textmarg,
            alignment: constant1.textliment,
            child: Text(
              exp,
              style: constant1.style1,
            ),
          ),
          Row(
            children: [
              custambuton(
                btncolor: Color.fromARGB(255, 241, 227, 17),
                btntext: "AC",
                btnflix: 2,
                callback: nunclik,
              ),
              custambuton(
                btncolor: Color.fromARGB(255, 212, 54, 101),
                btntext: "C",
                callback: nunclik,
              ),
              custambuton(
                btncolor: Color.fromARGB(255, 21, 132, 206),
                btntext: "%",
                callback: nunclik,
              ),
              custambuton(
                btncolor: Color.fromARGB(255, 184, 46, 46),
                btntext: "/",
                callback: nunclik,
              ),
            ],
          ),
          Row(
            children: [
              custambuton(
                btncolor: Color.fromARGB(255, 226, 152, 15),
                btntext: "7",
                callback: nunclik,
              ),
              custambuton(
                btncolor: Color.fromARGB(255, 8, 216, 136),
                btntext: "8",
                callback: nunclik,
              ),
              custambuton(
                btncolor: Color.fromARGB(255, 117, 64, 241),
                btntext: "9",
                callback: nunclik,
              ),
              custambuton(
                btncolor: Color.fromARGB(255, 107, 104, 104),
                btntext: "*",
                callback: nunclik,
              ),
            ],
          ),
          Row(
            children: [
              custambuton(
                btncolor: Color.fromARGB(255, 52, 154, 236),
                btntext: "4",
                callback: nunclik,
              ),
              custambuton(
                btncolor: Colors.yellow,
                btntext: "5",
                callback: nunclik,
              ),
              custambuton(
                btncolor: Colors.teal,
                btntext: "6",
                callback: nunclik,
              ),
              custambuton(
                btncolor: Colors.red,
                btntext: "-",
                callback: nunclik,
              ),
            ],
          ),
          Row(
            children: [
              custambuton(
                btncolor: Color.fromARGB(255, 236, 241, 245),
                btntext: "1",
                callback: nunclik,
              ),
              custambuton(
                btncolor: Color.fromARGB(255, 6, 66, 63),
                btntext: "2",
                callback: nunclik,
              ),
              custambuton(
                btncolor: Colors.teal,
                btntext: "3",
                callback: nunclik,
              ),
              custambuton(
                btncolor: Color.fromARGB(255, 236, 110, 101),
                btntext: "+",
                callback: nunclik,
              ),
            ],
          ),
          Row(
            children: [
              custambuton(
                btncolor: Color.fromARGB(255, 198, 206, 212),
                btntext: "0",
                btnflix: 4,
                callback: nunclik,
              ),
              custambuton(
                btncolor: Color.fromARGB(255, 184, 169, 41),
                btntext: ".",
                callback: nunclik,
              ),
              custambuton(
                btncolor: Color.fromARGB(255, 32, 178, 223),
                btntext: "=",
                callback: nunclik,
              ),
            ],
          )
        ],
      ),
    );
  }
}
