import 'package:flutter/material.dart';


class TextDemo extends StatelessWidget {
  //定义样式
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  final String _title = '西甲联赛';
  final String _author = 'lvjianxiong';
  //字符串里面访问外部变量使用 ${}
  @override
  Widget build(BuildContext context) {
    return Text(
      '<${_title}> -- ${_author}阿森西奥左路传中，本泽马禁区内转身射门打偏。第71分钟，马克西莫维奇远射打飞。第72分钟，马塔踩了卡塞米罗，被主裁判黄牌警告。第75分钟，比赛进入喝水时间。第78分钟，卡瓦哈尔在对方禁区内被奥利维拉犯规放倒，主裁判吹罚点球。第79分钟，拉莫斯主罚点球破门，皇马1-0',
      textAlign: TextAlign.center,//文字对其方式：start,center,end
      style: _textStyle,
      maxLines: 4,//最大显示行数
      overflow: TextOverflow.ellipsis,//超出文本显示富文本
    );
  }
}

//富文本
class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '西甲联赛直播',
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.black
        ),
        children: <TextSpan>[
          TextSpan(
            text: '--',
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.red
            ),
          ),
          TextSpan(
            text: 'lvjianxiong',
            style: TextStyle(
                fontSize: 15.0,
                color: Colors.blue
            ),
          ),
        ]
      ),

    );
  }
}


class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Row(
        children: <Widget>[
          Container(
            color: Colors.green,
            child: Icon(Icons.add,),
            padding: EdgeInsets.fromLTRB(30, 30, 30, 30),//内部填充
            margin: EdgeInsets.all(20),
            height: 200,
            width: 200,
          )
        ],
      ),//Row 横向布局
    );
  }
}

