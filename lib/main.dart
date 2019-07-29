import 'package:flutter/material.dart';

void main()=>runApp(new HorizontalListViewDemo());
class HorizontalListViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final title='HorizontalListViewDemo';
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Container(
          margin: new EdgeInsets.symmetric(vertical: 10.0),
          height: 200.0,
          child: new ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              new Container(
                width: 160.0,
                color: Colors.lightBlue,
                child: new Text('blue',
                    style: new TextStyle(
                  fontSize: 48.0,
                ),textAlign: TextAlign.center),
              ),
              new Container(
                width: 160.0,
                color: Colors.amberAccent,
                child: new Column(
                  children: <Widget>[
                    new Text(
                      'haha',
                      style:new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36.0,
                    ),),
                    new Text('lala'),
                    new Icon(Icons.camera_alt)
                  ],
                ),
              ),
              new Container(
                width: 160.0,
                color: Colors.deepOrangeAccent,
              ),
              new Container(
                width: 160.0,
                color: Colors.pinkAccent,
              ),
              new Container(
                width: 160.0,
                color: Colors.purple,
              ),
              new Container(
                width: 160.0,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class ListViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final title='ListViewDemo';
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.alarm),
              title: new Text('Alarm'),
            ),
            new ListTile(
              leading: new Icon(Icons.phone),
              title: new Text('Phone'),
            ),
            new ListTile(
              leading: new Icon(Icons.airplay),
              title: new Text('Airplay'),
            ),
          ],
        ),
      ),
    );
  }
}
class TextDemo extends StatelessWidget{
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
            ),
          ),
          new Text(
            '橙色+下划线+24号',
            style: new TextStyle(
              color:const Color(0xffff9900),
              decoration: TextDecoration.underline,
              fontSize: 24.0,
            ),
          ),
          new Text(
            '虚线+上划线+23号+倾斜',
            style: new TextStyle(
                decoration: TextDecoration.overline,
                decorationStyle: TextDecorationStyle.dashed,
                fontSize: 23.0,
                fontStyle: FontStyle.italic
            ),
          ),
          new Text(
            '22号+加粗',
            style: new TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 6.0,
            ),
          ),
        ],
      ),
    );
  }
}
class ImageDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Center(
      child:
      new Image.network(
        'https://avatars0.githubusercontent.com/u/53364077?s=180&v=4',
        scale: 2.0,
        //fit: BoxFit.fill,
      ),
    );
  }
}
class ContainerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Container(
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
            color: Colors.amberAccent,
            border: new Border.all(
                color: const Color(0xff5d9eeb),
                width: 8.0
            ),
            borderRadius: const BorderRadius.all(
              const Radius.circular(18.0),
            )
        ),
        child: new Text(
          'hello',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
//void main(){
// runApp(
//   new MaterialApp(
//     title: 'Demo',
//     //home: new ContainerDemo(),
//     //home: new ImageDemo(),
//     //home: new TextDemo(),
//  )
//  );
//}