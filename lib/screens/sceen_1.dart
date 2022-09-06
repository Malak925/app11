import 'package:apppagee/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class My_first_sc extends StatefulWidget {
  const My_first_sc({super.key});

  @override
  State<My_first_sc> createState() => _My_first_scState();
}

class _My_first_scState extends State<My_first_sc> {
  String ChValue = "Hi";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "First screen",
          style: TextStyle(fontFamily: 'Anton-Regular'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return MyApp();
                    },
                  ));
                },
                icon: Icon(Icons.keyboard_return),
                label: Text(
                  "Return To Main",
                  style: TextStyle(fontFamily: 'Anton-Regular'),
                )),
            DropdownButton(
                value: ChValue,
                items: [
                  DropdownMenuItem(
                    child: Text(
                      "Hello",
                      style: TextStyle(fontFamily: 'Anton-Regular'),
                    ),
                    value: "Hello",
                  ),
                  DropdownMenuItem(
                    child: Text(
                      "Bonjor",
                      style: TextStyle(fontFamily: 'Anton-Regular'),
                    ),
                    value: "Bonjor",
                  ),
                  DropdownMenuItem(
                    child: Text(
                      "Hi",
                      style: TextStyle(fontFamily: 'Anton-Regular'),
                    ),
                    value: "Hi",
                  ),
                  DropdownMenuItem(
                    child: Text(
                      "Mar7aba",
                      style: TextStyle(fontFamily: 'Anton-Regular'),
                    ),
                    value: "Mar7aba",
                  )
                ],
                onChanged: (val) {
                  setState(() {
                    ChValue = val.toString();
                  });
                })
          ],
        ),
      ),
    );
  }
}
