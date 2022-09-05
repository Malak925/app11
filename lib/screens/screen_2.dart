import 'package:apppagee/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class My_second_sc extends StatefulWidget {
  const My_second_sc({super.key});

  @override
  State<My_second_sc> createState() => _My_second_scState();
}

class _My_second_scState extends State<My_second_sc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second screen"),
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
          ],
        ),
      ),
    );
  }
}
