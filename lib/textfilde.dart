import 'dart:html';

import 'package:flutter/material.dart';

class textfilde extends StatelessWidget {
  const textfilde({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController n1 = TextEditingController();
    TextEditingController n2 = TextEditingController();
    TextEditingController sum = TextEditingController();
    TextEditingController n3 = TextEditingController();
    TextEditingController n4 = TextEditingController();
    TextEditingController sum2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("تكليف المحاضره الخامسه"),
      ),
      body: Column(children: [
        mytextfild(Colors.amber, "input number one", "number onee",
            Icon(Icons.numbers_sharp), Icon(Icons.password), n1, false),
        mytextfild(Colors.amber, "input number two", "number two",
            Icon(Icons.numbers_sharp), Icon(Icons.password), n2, false),
        mytextfild(Colors.amber, "input number result", "number result",
            Icon(Icons.numbers_sharp), Icon(Icons.password), sum, true),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            oprtion(
              "sum",
              sum,
              n1,
              n2,
              () => sum.text =
                  (int.parse(n1.text) + int.parse(n2.text)).toString(),
            ),
            oprtion(
              "mult",
              sum,
              n1,
              n2,
              () => sum.text =
                  (int.parse(n1.text) * int.parse(n2.text)).toString(),
            ),
            oprtion("div", sum, n1, n2, () {
              if (int.parse(n2.text) != 0)
                sum.text = (int.parse(n1.text) / int.parse(n2.text)).toString();
              else
                sum.text = "لايمكن القسمه على صفر";
            }),
            oprtion(
              "sub",
              sum,
              n1,
              n2,
              () => sum.text =
                  (int.parse(n1.text) - int.parse(n2.text)).toString(),
            ),
          ],
        ),
        mytextfild(Colors.amber, "input number one", "number onee",
            Icon(Icons.numbers_sharp), Icon(Icons.password), n3, false),
        mytextfild(Colors.amber, "input number two", "number two",
            Icon(Icons.numbers_sharp), Icon(Icons.password), n4, false),
        mytextfild(Colors.amber, "input number result", "number result",
            Icon(Icons.numbers_sharp), Icon(Icons.password), sum2, true),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            oprtion(
              "sub",
              sum2,
              n3,
              n4,
              () => sum2.text =
                  (int.parse(n3.text) - int.parse(n4.text)).toString(),
            ),
            oprtion(
              "sum",
              sum,
              n3,
              n4,
              () => sum2.text =
                  (int.parse(n3.text) + int.parse(n4.text)).toString(),
            ),
            oprtion(
              "mult",
              sum,
              n3,
              n4,
              () => sum2.text =
                  (int.parse(n3.text) * int.parse(n4.text)).toString(),
            ),
            oprtion(
              "sub",
              sum2,
              n3,
              n4,
              () => sum2.text =
                  (int.parse(n3.text) % int.parse(n4.text)).toString(),
            ),
            oprtion("div", sum2, n3, n4, () {
              if (int.parse(n4.text) != 0)
                sum.text = (int.parse(n3.text) / int.parse(n4.text)).toString();
              else
                sum2.text = "لايمكن القسمه على صفر";
            }),
          ],
        )
      ]),
    );
  }

  Padding oprtion(String su, TextEditingController sum,
      TextEditingController n1, TextEditingController n2, fun) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        child: Text(su),
        onPressed: fun,
      ),
    );
  }

  Padding mytextfild(Color c, String hint, String lable, Icon pref, Icon m,
      TextEditingController con, bool b) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextField(
        readOnly: b,
        controller: con,
        decoration: InputDecoration(
            fillColor: c,
            filled: true,
            hintText: hint,
            labelText: lable,
            prefixIcon: pref,
            suffixIcon: m,
            border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 224, 13, 13), width: 5),
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
