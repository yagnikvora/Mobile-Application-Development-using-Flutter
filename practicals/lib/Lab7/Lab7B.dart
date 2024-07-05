import "package:flutter/material.dart";

class Lab7B extends StatefulWidget {
  @override
  State<Lab7B> createState() => _Lab7BState();
}

class _Lab7BState extends State<Lab7B> {
  TextEditingController txt_clr = TextEditingController();

  String text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField Demo"),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextFormField(
              controller: txt_clr,
              decoration: InputDecoration(
                hintText: "Enter Name",
                label: Text("Name"),
                contentPadding: EdgeInsets.only(left: 25),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 5.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 4.0),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          Text("Value of TextView : ${text}", style: TextStyle(fontSize: 25)),
          ElevatedButton(
            onPressed: () {
              setState(() {
                text = txt_clr.text;
                print("${text}");
              });
            },
            child: Text("Click"),
          )
        ],
      ),
    );
  }
}
