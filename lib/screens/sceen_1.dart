import 'package:apppagee/main.dart';
import 'package:flutter/material.dart';

class My_first_sc extends StatefulWidget {
  const My_first_sc({super.key});

  @override
  State<My_first_sc> createState() => _My_first_scState();
}

class _My_first_scState extends State<My_first_sc> {
  String ChValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First screen"),
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
                label: Text("Return To Main")),
            DropdownButton(
                value: ChValue,
                items: [
                  DropdownMenuItem(
                    child: Text("Hello"),
                    value: "hello",
                  ),
                  DropdownMenuItem(
                    child: Text("Bonjor"),
                    value: 'bonjor',
                  ),
                  DropdownMenuItem(
                    child: Text("Hi"),
                    value: 'hi',
                  ),
                  DropdownMenuItem(
                    child: Text("Mar7aba"),
                    value: 'mar7aba',
                  )
                ],
                onChanged: (val) {
                  ChValue = val.toString();
                })
          ],
        ),
      ),
    );
  }
}
