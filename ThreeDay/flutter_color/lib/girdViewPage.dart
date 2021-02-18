import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GirdViewPage extends StatefulWidget {
  @override
  GirdViewState createState() => GirdViewState();
  
}

class GirdViewState extends State<GirdViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '列表'
        ),
      ),
      body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount (
            crossAxisCount: 3,
            childAspectRatio: 1.0,
          ),
        children: [
          Icon(Icons.ac_unit),
          Icon(Icons.account_balance_wallet_rounded),
          Icon(Icons.baby_changing_station),
          Icon(Icons.category),
        ],
      ),
    );
  }
  
}