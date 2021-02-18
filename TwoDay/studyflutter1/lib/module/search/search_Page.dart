import 'package:flutter/material.dart';

// StatefulWidget 内部状态会发生改变
// StatelessWidget 内部状态不会发生改变

class SearchPage extends StatefulWidget {
  @override
  _SearchState createState()=> _SearchState();
}

class _SearchState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("This is My Frist Flutter"),
    );
  }

}