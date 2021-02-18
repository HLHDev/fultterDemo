import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:studyflutter1/model/dModel.dart';
import 'package:studyflutter1/module/morePage/moreDetailItem.dart';
import 'package:studyflutter1/module/widgets/rootPage.dart';

// StatefulWidget 内部状态会发生改变
// StatelessWidget 内部状态不会发生改变

class MorePage extends StatefulWidget {

  final DoubanCategory category;

  MorePage({
    Key key,
    this.category
  });

  @override
  _MoreState createState()=> _MoreState();
}

class _MoreState extends State<MorePage> with SingleTickerProviderStateMixin{

  TabController _tabController;
  RefreshController _controller = RefreshController(initialRefresh: false);

  int itemCount = 10;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: DoubanModel.getMoreTitle(widget.category).length);
  }

  @override
  Widget build(BuildContext context) {
    print(widget.category);
    return RootPage(
      title: DoubanModel.getDouBanTitle(widget.category),
      tabBar: _configTabBar(),
      body: TabBarView(
        controller: _tabController,
        children: _ConfigTabControl(),
      ),
    );
  }

  Widget _configTabBar() {
    return TabBar(
      controller: _tabController,
      unselectedLabelColor: Colors.white, // 为选中颜色
      indicatorColor: Colors.white, // 滑块颜色
      indicatorSize: TabBarIndicatorSize.label, // 滑块跟文字一样长度
      labelStyle: TextStyle( // 选中文字
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: TextStyle( // 为选中文字
        fontSize: 18,
        fontWeight: FontWeight.normal,
      ),
      labelPadding: EdgeInsets.only(bottom: 8),

      tabs: _ConfigTabs(),
    );
  }
  List<Widget> _ConfigTabs() {
    List<Widget> tablist = [];
    for (int i = 0 ; i < DoubanModel.getMoreTitle(widget.category).length; i++) {
      tablist.add(Text(
        DoubanModel.getMoreTitle(widget.category)[i],
      ));
    }
    return tablist;
  }

  List<Widget> _ConfigTabControl() {
    List<Widget> tablist = [];
    for (int i = 0 ; i < DoubanModel.getMoreTitle(widget.category).length; i++) {
      tablist.add(_ConfigTabViewLisrt());
    }
    return tablist;
  }

  Widget _ConfigTabViewLisrt() {
    return SmartRefresher(
      controller: _controller,
      enablePullDown: false,
      enablePullUp: true,
      onLoading: _onLoading,
      child: ListView.separated(
        itemCount: 18,
        itemBuilder: _buildItem,
        separatorBuilder: (BuildContext context, int index) {
          return Container(height: 21,);
        },
      ),
      footer: CustomFooter(
        builder: (BuildContext context, LoadStatus status) {
          Widget body;
          if (status == LoadStatus.idle) {
            return Container();
          } else if (status == LoadStatus.loading) {
            return CupertinoActivityIndicator();
          } else if(status == LoadStatus.failed){
            body = Text('加载失败');
          } else if(status == LoadStatus.canLoading) {
            body = Text('release to load');
          } else {
            body = Text('no more data');
          }
          return Container(
            height: 55,
            child: Center(
              child: body,
            ),
          );
        },
      ),
    );
  }

  void _onLoading() {
    Future.delayed(Duration(seconds: 2),() {
      itemCount += 5;
      _controller.loadComplete();
      setState(() {

      });
    });
  }

  Widget _buildItem(BuildContext context, int index) {
    return MoreDetailItem();
  }
}

