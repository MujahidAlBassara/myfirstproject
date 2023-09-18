import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class fileutils {
  static Future<String> get getfilepath async {
    final dir = await getApplicationDocumentsDirectory();
    return dir.path;
  }

  static Future<File> get getfile async {
    final path = await getfilepath;
    return File('$path/myfile.txt');
  }

  static Future<File> savetofile(String str) async {
    final file = await getfile;
    return file.writeAsString(str + "\n", mode: FileMode.append);
  }

  static Future<String> readfromfile() async {
    try {
      final file = await getfile;
      String contant = await file.readAsString();
      return contant;
    } catch (e) {
      return "cxcv";
    }
  }
}
