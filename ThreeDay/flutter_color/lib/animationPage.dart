import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



/*
*  ** Animation
*     抽象类：保存动画的插值和状态
*     在整个动画执行过程中输出线性，曲线，任意曲线函数等（Curve）
*     运行方式：正向，反向，或在中间切换方向
*
*  ** 动画通知
*     addListener:添加帧监听器（改变状态后刷新UI）
*     addStatusListener：添加状态变化监听器（动画的开始，结束）
*
*  ** Curve
*     动画过程：匀速，匀加速等
*     线性的：匀加速动画（Curve.linear）
*     CurveAnimation：指定动画的曲线
*
*  ** AnimationController
*     动画控制器：启动，停止，方向等
*
*  ** Vsync
*     类型：TickerProvider
*     职责：创建Ticker
*
*  ** Ticker
*     作用：通过ScheulerBinding来添加屏幕刷新回调
*     屏幕每次刷新调用TickerCallback
*     防止屏幕外动画消耗不必要的资源（锁屏）
*
*  ** Tween
*     场景：构建UI的动画值在不同的范围内或不同的数据类型（映射）
*     职能：定义从输入范围到输出范围的映射
*
* */

class AnimationPage extends StatefulWidget {
  @override
  AnimationState createState() => AnimationState();
}

class AnimationState extends State<AnimationPage> with SingleTickerProviderStateMixin {

  // final Tween doubleTeen = Tween<double>(begin: 0.0, end: 100.0);
  AnimationController controller;
  CurvedAnimation curve;
  Animation<double> animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController( duration: Duration(seconds: 2), vsync: this);
    curve = new CurvedAnimation(parent: controller, curve: Curves.bounceIn);
    animation = Tween<double>(begin: 0.0, end: 300.0).animate(curve)..addListener(() {setState(() {
    animation.addStatusListener((status) {
      if(status == AnimationStatus.completed) {
        controller.reverse();
      } else if(status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
    }); });

  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('动画'),
      ),
      body: Center(
        child: Container(
          child: Image(
            width: animation.value,
            height: animation.value,
            image: AssetImage(''),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.animation),
        onPressed: ()=> controller.forward(),
      ),
    );
  }
}