import 'package:flutter/material.dart';
class ContainerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('文本控件'),
      ),
      body: new Column(
        children: <Widget>[
          new Text(
            '红色+黑色删除线+25号',
            style: new TextStyle(
            color:const Color(0xffff0000),
            decoration: TextDecoration.lineThrough,
            decorationColor: const Color(0xff000000),
            fontSize: 25.0,
          ),)
        ],
      ),
    );
  }
}
void main(){
  runApp(
    new MaterialApp(
      title: 'Text Demo',
      home: new ContainerDemo(),
    )
  );
}