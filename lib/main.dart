import 'package:flutter/material.dart';

// Test application for testing

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Testing Unicode: Chinese & Hangul'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  Text koreanCustom;
  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Default font text style
    TextStyle defaultStyle = new TextStyle(
      inherit: false,
      color: Colors.black,
      fontSize: 20.0,
      fontStyle: FontStyle.normal,
    );

    // AbrilFatface font for Western glyphs
    TextStyle customAbrilFatfaceStyle = new TextStyle(
        inherit: false,
        color: Colors.black,
        fontSize: 20.0,
        fontStyle: FontStyle.normal,
        fontFamily: 'AbrilFatface');

    // Nanum or Pilgiche for Korean/hangul
    TextStyle customKoreanFontStyle = new TextStyle(
      inherit: false,
      color: Colors.black,
      fontSize: 20.0,
      fontStyle: FontStyle.normal,
//      fontFamily: 'Nanum',
      fontFamily: 'Pilgiche',
    );

    // Heiti font for Chinese
    TextStyle customChineseFontStyle = new TextStyle(
      inherit: false,
      color: Colors.black,
      fontSize: 20.0,
      fontStyle: FontStyle.normal,
      fontFamily: 'Heiti',
    );

    Text koreanCustom = new Text(
      'Korean Pilgiche font: 한국어 \u{D55C}\u{AE00}',
      style: customKoreanFontStyle,
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(
              'Korean default font: 한국어 \u{D55C}\u{AE00}',
              style: defaultStyle,
            ),
            new Text(
              'Chinese default font: 孤山寺北贾亭西',
              style: defaultStyle,
            ),
            new Text(
              'Western AbrilFatface font: Just a test!',
              style: customAbrilFatfaceStyle,
            ),
            koreanCustom,
            new Text(
              'Chinese custom font: 亭西 \u{89d2} \u{5000} testing',
              style: customChineseFontStyle,
            ),
            new FlatButton(
                child: new Text('Dump style for Korean'),
                onPressed: () {
                  print(koreanCustom.style);
                }),
          ]),
    );
  }
}
