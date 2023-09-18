import 'package:flutter/material.dart';

class new1 extends StatefulWidget {
  const new1({Key? key}) : super(key: key);

  @override
  State<new1> createState() => _new1State();
}

class _new1State extends State<new1> {
  List<String> l = ["fass", "mojajed"];

  TextEditingController con = TextEditingController();

  Card card1(int i, int ind, TextEditingController con) {
    return Card(
        borderOnForeground: true,
        elevation: 50,
        shadowColor: Colors.amber,
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Color.fromRGBO(244, 67, 54, 1),
        child: ListTile(
          onTap: () {
            ind = i;
          },
          leading: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              setState(() {
                l.removeAt(i);
              });
            },
          ),
          trailing: IconButton(
            icon: Icon(Icons.update),
            onPressed: () {
              setState(() {
                l[i] = con.text;
              });
            },
          ),
          title: Text(
            l[i],
            textAlign: TextAlign.center,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    int ind = 0;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("mojahjed"),
        ),
        body: Column(
          children: [
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        l.add(con.text);
                      });
                    },
                    child: Text("save"))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Color.fromARGB(255, 193, 253, 181),
                  filled: true,
                ),
                onSubmitted: (value) {
                  setState(() {
                    l.add(value);
                  });
                },
                controller: con,
              ),
            ),
            Expanded(
                //
                flex: 1,
                child: Container(
                  color: Colors.amber,
                  child: ListView.builder(
                    itemCount: l.length,
                    itemBuilder: (BuildContext ctx, int i) {
                      return card1(i, ind, con);
                    },
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
