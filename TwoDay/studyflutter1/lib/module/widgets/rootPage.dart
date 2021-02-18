import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RootPage extends StatelessWidget {

  final String title;
  final bool hasLeading;
  final TabBar tabBar;
  final Widget body;
  RootPage({
    Key key,
    this.title,
    this.hasLeading = true,
    this.tabBar,
    this.body,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: title != null ? AppBar(
        backgroundColor: Color(0xFF33C9FF),
        leading: hasLeading ? Builder(builder: (BuildContext context){
          return IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: (){
              Navigator.pop(context);
            },
          );
        }) : null,
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        bottom: tabBar,
      ) : null,
      body: this.body,
    ) ;
  }
}
