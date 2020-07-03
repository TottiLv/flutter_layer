import 'layout_demo.dart';
import 'listview_demo.dart';
import 'base_widget.dart';
import 'package:flutter/material.dart';
//初探ListView
void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
    );

  }
}

class Home extends StatelessWidget {
  /*
  * build描述这个widget所代表的用户界面的部分，类似iOS的viewDidLoad
  * framework会调用这个方法：
  * 1.当这个widget被插入到给定 BuildContext 的中的时候；
  * 2.当widget的依赖改变的时候；
  * */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Layer'),
      ),
      //body: ListViewDemo(),//列表样式
      body: LayoutStackAspectDemo(),
      backgroundColor: Colors.grey,
    );
  }
}