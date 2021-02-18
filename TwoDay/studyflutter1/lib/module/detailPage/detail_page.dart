import 'package:flutter/material.dart';

// StatefulWidget 内部状态会发生改变
// StatelessWidget 内部状态不会发生改变

class DetailPage extends StatefulWidget {
  @override
  _DetailState createState()=> _DetailState();
}

class _DetailState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("This is My Frist Flutter"),
    );
  }

}