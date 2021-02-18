import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_color/webViewPage.dart';

class ListViewPage extends StatefulWidget {
  @override
  ListViewState createState() => ListViewState();

}

class ListViewState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('列表'),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index){

            // return ListTile(
            //   title: Text('this is ListView $index'),
            //   subtitle: Text('副 $index'),
            //   leading: Icon(Icons.list),
            //
            // );
            return Container(
              height: 60,
              child: GestureDetector(
                child: Text(
                  'this is ListView $index',

                ),
                onTap:()=> listviewTapAction(index),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.green,
              padding: EdgeInsets.only(left: 15, right: 15),
              height: 1,
            );
          },
          itemCount: 50,

      ),
      // body: ListView.builder(
      //   itemCount: 20,
      //   itemBuilder: (BuildContext context, int index){
      //     return ListTile(
      //       title: Text('this is ListView $index'),
      //     );
      //   },
      // ),
    );
  }

  void listviewTapAction(int index) {
    print('123');
    Navigator.push(context, MaterialPageRoute(
        builder: (BuildContext context) {
          return WebViewPage();
        }
    ));
  }

}