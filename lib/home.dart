import 'package:flutter/material.dart';
import 'textfilde.dart';

class homewidget extends StatelessWidget {
  const homewidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 10, 226, 39),
        title: Text(
          "mojahed",
          style: TextStyle(
            backgroundColor: Color.fromARGB(255, 201, 15, 15),
          ),
        ),
      ),
      body: AspectRatio(
        aspectRatio: 1,
        child: Container(
          color: Colors.pink,
          padding: EdgeInsets.all(50),
          child: Transform.rotate(
            angle: 50.0,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromARGB(255, 213, 40, 236),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.deepPurple.withAlpha(120),
                        blurRadius: 5,
                        offset: Offset.fromDirection(50))
                  ]),
              padding: EdgeInsets.all(50),
              child: Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [Colors.red, Colors.blue],
                    ),
                    boxShadow: [BoxShadow(blurRadius: 20)]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
