
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GestureDetecatorPage extends StatefulWidget {
  @override
  GesturePageState createState() => GesturePageState();
}

class GesturePageState extends State<GestureDetecatorPage> {
  String operationS = 'No Gesture detected!'; // 保存事件名
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('手势'),
      ),
      body: Center(
        child: GestureDetector(
          child: Container(
            alignment: Alignment.center,
            color: Colors.green,
            width: 300,
            height: 200,
            child: Text(
              operationS,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          onTap: ()=> updateText('tap'), // 点击
          onDoubleTap: () => updateText('DoubleTap'), //双击
          onLongPress: () => updateText('LongPress'), // 长按
        ),
      ),
    );
  }
  void updateText(String text){
    setState(() {
      operationS = text;
    });
  }
}