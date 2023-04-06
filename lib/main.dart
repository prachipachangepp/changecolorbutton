import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool click = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Color Change Button"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                click = !click;
                print("button clicked");
              });
            },
            style: ElevatedButton.styleFrom(
              primary: (click == false) ? Colors.amber : Colors.red,
            ),
            child: Text("hello"),
          ),
        ));
  }
}
