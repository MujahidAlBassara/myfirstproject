import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_5/calculator.dart';

class cal extends StatefulWidget {
  const cal({Key? key}) : super(key: key);

  @override
  State<cal> createState() => _calState();
}

class _calState extends State<cal> {
  TextEditingController input1 = TextEditingController();
  TextEditingController result = TextEditingController();
  int s = 0;
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("calculat")),
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
            controller: input1,
          ),
          SizedBox(
            width: 2,
            height: 3,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
            controller: result,
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      input1.clear();
                      result.clear();
                    });
                  },
                  child: Text("clear")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      //  for(int i=0;i<input1.text.length;i++){

                      s = input1.text.length;
                      result.text = s.toString();
                    });
                  },
                  child: Text("length"))
            ],
          )
        ],
      ),
    );
  }
}
