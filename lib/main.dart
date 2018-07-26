import 'package:flutter/material.dart';
import 'package:material_page_reveal/pager_indicator.dart';
import 'package:material_page_reveal/page_reveal.dart';
import 'package:material_page_reveal/pages.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        children: <Widget>[
          Page(
            viewModel: pages[0],
            percentVisible: 1.0,
          ),
          PageReveal(
            revealPercent: 1.0,
            child: Page(
              viewModel: pages[1],
              percentVisible: 1.0,
            ),
          ),
          PagerIndicator(
            viewModel: PagerIndicatorViewModel(
              pages,
              1,
              SlideDirection.none,
              0.0,
            ),
          ),
        ],
      ),
    );
  }
}
