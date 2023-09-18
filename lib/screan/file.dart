import 'package:flutter/material.dart';
import 'fil.dart';

class file1 extends StatefulWidget {
  const file1({Key? key}) : super(key: key);

  @override
  State<file1> createState() => _file1State();
}

class _file1State extends State<file1> {
  String filecontant = "k";
  TextEditingController mycontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("myfile")),
      body: Column(
        children: [
          TextField(
            controller: mycontroller,
          ),
          ElevatedButton(
              onPressed: () {
                fileutils.savetofile(mycontroller.text);
              },
              child: Text("save to file")),
          ElevatedButton(
              onPressed: () {
                fileutils.readfromfile().then((co) {
                  setState(() {
                    filecontant = co;
                  });
                });
              },
              child: Text("read from file")),
          Text(
            filecontant,
            style: TextStyle(
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}
