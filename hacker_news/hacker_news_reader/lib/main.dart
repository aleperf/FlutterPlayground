import 'package:flutter/material.dart';
import 'src/article.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hacker News Reader',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Hacker News Reader'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Article> _articles = articles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: new RefreshIndicator(
        //async return a Future by default, onRefresh require a Future as
        //return type
        onRefresh: () async {
          await new Future.delayed(const Duration(seconds: 1));
          setState(() {
            if (_articles.length > 0) {
              _articles.removeAt(0);
            }
          });
        },
        child: new ListView(
          children: _articles
              .map((article) => Center(child: _buildItem(article)))
              .toList(),
        ),
      ),
    );
  }

  Widget _buildItem(Article article) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ExpansionTile(
        title: new Text(
          article.text,
          style: new TextStyle(fontSize: 24.0),
        ),
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Text("${article.commentsCount}"),
              new IconButton(
                  icon: new Icon(Icons.launch),
                  color: Colors.blue,
                  onPressed: () async {
                    final urlString = "http:\\${article.domain}";
                    if (await canLaunch(urlString)) {
                      launch(urlString);
                    }
                  })
            ],
          )
        ],
      ),
    );
  }
}
