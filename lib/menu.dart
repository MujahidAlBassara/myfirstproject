import 'package:flutter/material.dart';
import 'package:flutter_application_5/new.dart';
import 'home.dart';
import 'nn.dart';
import 'textfilde.dart';
import 'calculator.dart';
import 'new.dart';
import 'length.dart';
import 'package:flutter_application_5/screan/file.dart';
import 'dart:io';

class menu extends StatelessWidget {
  const menu({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("@mojahed"),
              accountEmail: Text("mjehed7118873734@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.person),
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 51, 99, 230),
              ),
            ),
            ListTile(
                subtitle: Text("prwfil"),
                title: Text("الصفحه الرئيسيه"),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => homewidget()),
                  );
                }),
            ListTile(
                subtitle: Text("textfilde"),
                title: Text(" textfilde"),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => textfilde()));
                }),
            ListTile(
              subtitle: Text("الحسابه"),
              title: Text("calcultor "),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: ((context) => calculat())));
              },
            ),
            ListTile(
                onTap: () {
                  Navigator.of(context).pop();
                },
                leading: Icon(Icons.close),
                subtitle: Text("close"),
                title: Text("Close Drawer")),
            ListTile(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => new1()));
                },
                leading: Icon(Icons.close),
                subtitle: Text("bulder"),
                title: Text("bulder")),
            ListTile(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => cal()));
                },
                leading: Icon(Icons.close),
                subtitle: Text("length"),
                title: Text("length")),
            ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => file1()));
              },
              leading: Icon(Icons.abc),
              title: Text("file"),
              subtitle: Text("file"),
            ),
          ],
        ),
      ),
    );
  }
}
