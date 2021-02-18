import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_color/gradientButton.dart';

class GradientPage extends StatefulWidget {
  @override
  GradientState createState() => GradientState();
  
}

class GradientState extends State<GradientPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('渐变'),
      ),
      body: Container(
        child: Column(
          children: [
            GradientButton(
              child: Text('ONE'),
              colors: [Colors.red, Colors.orange],
              height: 50,
              onPress: ontap,
            ),
            GradientButton(
              child: Text('Two'),
              colors: [Colors.blue, Colors.yellow],
              height: 60,
              onPress: ontap,
            ),
            GradientButton(
              child: Text('THERE'),
              colors: [Colors.purple, Colors.lightBlue],
              height: 70,
              onPress: ontap,
            ),
          ],
        ),
      ),
    );
  }
  void ontap() {
    print('Print button');
  }
}