import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  NotificationState createState() => NotificationState();

}

class NotificationState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('通知'),
      ),
      body: NotificationListener(
        onNotification: (notification){
          switch (notification.runtimeType){
            case ScrollStartNotification: {
                print('start');
                break;
              }
            case ScrollUpdateNotification: {
              print('update');
              break;
            }
            case ScrollEndNotification: {
              print('end');
              break;
            }
          }
        },
        child: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('this is ListViewImte $index'),
            );
          },
        ),
      ),
    );
  }

}