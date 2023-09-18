import 'package:flutter/material.dart';
import 'package:flutter_application_5/constant/constant.dart';

class custambuton extends StatelessWidget {
  custambuton(
      {Key? key,
      @required this.btncolor,
      @required this.btntext,
      this.btnflix,
      @required this.callback})
      : super(key: key);
  Color? btncolor;
  String? btntext;
  int? btnflix;
  Function? callback;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: btnflix == null ? 1 : btnflix!,
      child: GestureDetector(
        onTap: () {
          callback!(btntext);
        },
        child: Container(
          width: 70,
          height: 80,
          child: Text(
            btntext!,
            style: constant1.btntext,
          ),
          margin: EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: btncolor, borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
