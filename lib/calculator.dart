import 'package:flutter/material.dart';
import 'package:flutter_application_5/screan/firstscrean.dart';

class calculat extends StatelessWidget {
  const calculat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Firstscreen(),
    );
  }
}
