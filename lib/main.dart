import 'package:apppagee/screens/sceen_1.dart';
import 'package:apppagee/screens/screen_2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                child: ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return My_first_sc();
                        }));
                      });
                    },
                    icon: Icon(Icons.pages),
                    label: Text("First Screen"))),
            Container(
                child: ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return My_second_sc();
                        }));
                      });
                    },
                    icon: Icon(Icons.pages),
                    label: Text("second Screen"))),
          ],
        ),
      ),
    );
  }
}
