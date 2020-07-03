import 'package:flutter/material.dart';

//Center
//Alignment(x,y) x,y的原点在中心点（与iOS不同）
//Row 横向布局(默认按x居中)
//Column 纵向布局(默认按y居中)
//Stack 叠加布局(默认按z居中)

//mainAxisAlignment，crossAxisAlignment是Row，Column中重要的布局属性
/*
* 关于主轴 mainAxisAlignment(Row,Column模式下有)
* spaceBetween //剩下的空间平均分布到小部件之间
* spaceAround  //控件外，剩下的空间平均分配（等间距）
* spaceEvenly  //所有剩余空间全部平均分配
* */
/*
* 关于交叉轴 crossAxisAlignment（垂直于主轴）
* baseline必须与textBaseline一起使用（将控件中的内容全部对其在同一水平线）
* textBaseline: TextBaseline.alphabetic
* */

/*
* Expanded 填充布局，在主轴不剩间隙，会拉伸填充满主轴
* 如果Row，则：width设置没有意义
* 如果Column，则：height设置没有意义
* */
class LayoutRowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      alignment: Alignment(0.0,0.0),//
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,//主轴
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.ideographic,
        children: <Widget>[
          Expanded(
            child: Container(height: 80,color: Colors.red,child: Text('A',style: TextStyle(fontSize: 15),),),
          ),
          Expanded(
            child: Container(height: 80,color: Colors.green,child: Text('B',style: TextStyle(fontSize: 30),),),
          ),
          Expanded(
            child: Container(height: 80,color: Colors.blue,child: Text('C',style: TextStyle(fontSize: 45),),),
          ),
          /*
          Container(color: Colors.red,child: Icon(Icons.add,size:120),),
          Container(color: Colors.green,child: Icon(Icons.ac_unit,size:90),),
          Container(color: Colors.blue,child: Icon(Icons.access_alarm,size:60),),
          Container(height: 80,color: Colors.red,child: Text('A',style: TextStyle(fontSize: 15),),),
          Container(height: 80,color: Colors.green,child: Text('B',style: TextStyle(fontSize: 30),),),
          Container(height: 80, color: Colors.blue,child: Text('C',style: TextStyle(fontSize: 60),),),
           */
        ],
      ),
    );
  }
}

class LayoutColumnDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      alignment: Alignment(0.0,0.0),//
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,//主轴
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.ideographic,
        children: <Widget>[
          Container(color: Colors.red,child: Icon(Icons.add,size:120),),
          Container(color: Colors.green,child: Icon(Icons.ac_unit,size:90),),
          Container(color: Colors.blue,child: Icon(Icons.access_alarm,size:60),),
          Container(height: 80,color: Colors.red,child: Text('A',style: TextStyle(fontSize: 15),),),
          Container(height: 80,color: Colors.green,child: Text('B',style: TextStyle(fontSize: 30),),),
          Container(height: 80, color: Colors.blue,child: Text('C',style: TextStyle(fontSize: 60),),),
        ],
      ),
    );
  }
}

//Positioned按照位置做相对布局
class LayoutStackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      alignment: Alignment(0.0,0.0),//
      child: Stack(
        children: <Widget>[
          Positioned(//Stack布局专有,用来做相对布局
            child: Container(color: Colors.red,width:200, height:200,child: Icon(Icons.add,size:120),),
          ),
          Positioned(
            right: 30,
            top: 20,
            child: Container(color: Colors.green,width:100, height:100,child: Icon(Icons.ac_unit,size:90),),
          ),
          Positioned(
            left: 0,
            child: Container(color: Colors.blue,width:50, height:50,child: Icon(Icons.access_alarm,size:60),),
          ),
        ],
      ),
    );
  }
}

//aspectRatio按照宽高比布局,如果外部也设置了宽高，那么外部优先级更高
class LayoutStackAspectDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: 300,
      height: 300,
      child: AspectRatio(
        aspectRatio: 2 / 1,//宽高比
        child: Icon(Icons.add,size: 30,),
      ),
    );
  }
}

