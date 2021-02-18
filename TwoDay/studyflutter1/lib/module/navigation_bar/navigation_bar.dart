

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studyflutter1/module/homePage/home_page.dart';
import 'package:studyflutter1/module/personPage/person_Page.dart';
import 'package:studyflutter1/module/public/app_util.dart';

class NavigationBarPage extends StatefulWidget {
  @override
  NavigationState createState() => NavigationState();
}

class NavigationState extends State <NavigationBarPage> {
  PageController _pageController = PageController();

  int currentIndex = 0;

  void tapIndex (int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  void pageControChange (int index) {
    currentIndex = index;
    setState(() {

    });
  }

  void initApp(BuildContext context){
    AppUtil.screenwidth = MediaQuery.of(context).size.width;
    AppUtil.screenHeight = MediaQuery.of(context).size.height;
  }
  @override
  Widget build(BuildContext context) {
    initApp(context);
    return Scaffold(
      body: PageView(
        children: <Widget>[
          HomePage(),
          PersonPage(),
        ],
        controller: _pageController,
        onPageChanged: pageControChange,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '我的'),
        ],
        currentIndex: currentIndex,
        onTap: tapIndex,
      ),
    );
  }
  
}