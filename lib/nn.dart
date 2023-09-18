import 'dart:html';

import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.home),
        ],
        backgroundColor: Colors.amber,
      ),
      body: AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(color: Colors.blue),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Text("moksj"),
                width: 80,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(330),
                      bottomLeft: Radius.circular(330)),
                ),
              ),
              Container(
                child: Text("moksj"),
                width: 80,
                height: 150,
                // padding: EdgeInsets.only(top: 100),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(300),
                      bottomLeft: Radius.circular(300)),
                ),
                margin: EdgeInsetsDirectional.only(top: 200),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
