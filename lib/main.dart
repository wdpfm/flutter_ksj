import 'package:flutter/material.dart';

void main() {
  runApp(DidiSample());
}

class DidiSample extends StatefulWidget {
  @override
  _DidiSampleState createState() => _DidiSampleState();
}

class _DidiSampleState extends State<DidiSample> {
  Choice _selectedChoice = choices[0];

  void _select(Choice choice) {
    setState(() {
      _selectedChoice = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('滴滴出行'),
          actions: <Widget>[
            IconButton(
              icon: Icon(choices[0].icon),
              onPressed: () {
                _select(choices[0]);
              },
            ),
            IconButton(
              icon: Icon(choices[1].icon),
              onPressed: () {
                _select(choices[1]);
              },
            ),
            PopupMenuButton<Choice>(
              onSelected: _select,
              itemBuilder: (BuildContext context) {
                return choices
                    .skip(2)
                    .map<PopupMenuItem<Choice>>((Choice choice) {
                  return PopupMenuItem<Choice>(
                    value: choice,
                    child: Text(choice.title),
                  );
                }).toList();
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ChoiceDidi(choice: _selectedChoice),
        ),
      ),
    );
  }
}

class Choice {
  final String title;
  final IconData icon;

  const Choice({this.title, this.icon});
}

const List<Choice> choices = <Choice>[Choice(title: '自驾', icon: Icons.directions_car), Choice(title: '自行车', icon: Icons.directions_bike), Choice(title: '乘船', icon: Icons.directions_boat), Choice(title: '公交车', icon: Icons.directions_bus), Choice(title: '火车', icon: Icons.directions_railway), Choice(title: '步行', icon: Icons.directions_walk),];

class ChoiceDidi extends StatelessWidget {
  const ChoiceDidi({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              choice.icon,
              size: 128.0,
              color: textStyle.color,
            ),
            Text(
              choice.title,
              style: textStyle,
            )
          ],
        ),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget packedRow = new Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new Icon(
          Icons.star,
          color: Colors.pinkAccent,
        ),
        new Icon(
          Icons.star,
          color: Colors.pinkAccent,
        ),
        new Icon(
          Icons.star,
          color: Colors.pinkAccent,
        ),
        new Icon(
          Icons.star,
          color: Colors.pinkAccent,
        ),
        new Icon(
          Icons.star_border,
          color: Colors.pinkAccent,
        ),
      ],
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('包装控件'),
      ),
      body: packedRow,
    );
  }
}

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = '网格列表Demo';
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new GridView.count(
          primary: false,
          padding: const EdgeInsets.all(40.0),
          //边距
          crossAxisSpacing: 70.0,
          //间隙
          crossAxisCount: 3,
          children: <Widget>[
            const Text('第1行第1列'),
            const Text('第1行第2列'),
            const Text('第1行第3列'),
            const Text('第2行第1列'),
            const Text('第2行第2列'),
            const Text('第2行第3列'),
            const Text('第3行第1列'),
            const Text('第3行第2列'),
            const Text('第3行第3列'),
          ],
        ),
      ),
    );
  }
}

class LongListViewDemo extends StatelessWidget {
  final List<String> items;

  LongListViewDemo({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = '长列表Demo';
    return new MaterialApp(
      title: title,
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text(title),
          ),
          body: new ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return new ListTile(
                leading: Icon(Icons.phone),
                title: new Text('${items[index]}'),
              );
            },
          )),
    );
  }
}

class HorizontalListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'HorizontalListViewDemo';
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
                    ),
                    textAlign: TextAlign.center),
              ),
              new Container(
                width: 160.0,
                color: Colors.amberAccent,
                child: new Column(
                  children: <Widget>[
                    new Text(
                      'haha',
                      style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36.0,
                      ),
                    ),
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

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'ListViewDemo';
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

class TextDemo extends StatelessWidget {
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
              color: const Color(0xffff0000),
              decoration: TextDecoration.lineThrough,
              decorationColor: const Color(0xff000000),
              fontSize: 25.0,
            ),
          ),
          new Text(
            '橙色+下划线+24号',
            style: new TextStyle(
              color: const Color(0xffff9900),
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
                fontStyle: FontStyle.italic),
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

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Image.network(
        'https://avatars0.githubusercontent.com/u/53364077?s=180&v=4',
        scale: 2.0,
        //fit: BoxFit.fill,
      ),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Container(
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
            color: Colors.amberAccent,
            border: new Border.all(color: const Color(0xff5d9eeb), width: 8.0),
            borderRadius: const BorderRadius.all(
              const Radius.circular(18.0),
            )),
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
//     //home: new LayoutDemo(),
//  )
//  );
//}
//void main()=>runApp(new GridViewDemo());
//void main()=>runApp(new LongListViewDemo(
//  items:new List<String>.generate(100, (i)=>"Item $i"),
//));
