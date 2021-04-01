import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: Center(
          child: CustomBack(),
        ),
      ),
    );
  }
}

class CustomBack extends StatefulWidget {
  @override
  CustomBackState createState() => CustomBackState();
}

class CustomBackState extends State<CustomBack> {
  Color color;
  static Random random = new Random();
  static Color getColor() {
    return Color.fromARGB(
      255,
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
    );
  }

  @override
  void initState() {
    super.initState();
    color = getColor();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: getColor(),
      child: ListTile(
        title: Center(child: Text('Hey there')),
        onTap: () {
          setState(() {
            color = getColor();
          });
        },
      ),
    );
  }
}
