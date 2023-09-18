import 'package:flutter/material.dart';
import 'menu.dart';
import 'home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          drawer: menu(),
          appBar: AppBar(
            title: Text(
              "mojahed",
              style: TextStyle(color: Colors.red),
            ),
          ),
          backgroundColor: Colors.cyan[700],
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage("images/1.png"),
                ),
                Text(
                  "mojahed albsarh",
                  style: TextStyle(
                    fontSize: 38.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("مبرمج تطبيقات",
                    style: TextStyle(
                      color: Colors.grey.shade200,
                      fontSize: 38.0,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 20.0,
                  child: Divider(
                    color: Colors.cyan[100],
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(10.0),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 20.0,
                      color: Color.fromARGB(174, 10, 23, 216),
                    ),
                    title: Text(
                      "776418454",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Card(
                    color: Colors.white,
                    margin: EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.cyan[700],
                      ),
                      title: Text(
                        "mjeherd711887374@gmail.com",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black87,
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
