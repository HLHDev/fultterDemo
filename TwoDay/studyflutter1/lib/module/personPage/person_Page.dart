import 'package:flutter/material.dart';
import 'package:studyflutter1/module/widgets/rootPage.dart';

// StatefulWidget 内部状态会发生改变
// StatelessWidget 内部状态不会发生改变

class PersonPage extends StatefulWidget {
  @override
  _PersonState createState()=> _PersonState();
}

class _PersonState extends State<PersonPage> with SingleTickerProviderStateMixin{
  List<Widget> titleList = [Text('图书'),Text('电影'),Text('音乐')];
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: titleList.length);
  }

  @override
  Widget build(BuildContext context) {
    return RootPage (
      title: '我的',
      hasLeading: false,
      tabBar: _configTabBar(),
      body: TabBarView(
        children: titleList,
        controller: _tabController,
      ),
    );
  }

  Widget _configTabBar() {
    return TabBar(
      controller: _tabController,
      unselectedLabelColor: Colors.white,
      indicatorColor: Colors.white,
      indicatorSize: TabBarIndicatorSize.label,
      labelStyle: TextStyle( // 选中文字
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: TextStyle( // 为选中文字
        fontSize: 18,
        fontWeight: FontWeight.normal,
      ),
      labelPadding: EdgeInsets.only(bottom: 8),
      tabs: titleList,
    );
  }
}