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
    // Default font text style, inherit set to true
    TextStyle defaultStyle = new TextStyle(
      inherit: false,
      color: Colors.black,
      fontSize: 18.0,
      fontStyle: FontStyle.normal,
      height: 2.0,
    );

    // Default font text style
    TextStyle defaultStyleInherit = new TextStyle(
      inherit: true,
      color: Colors.black,
      fontSize: 18.0,
      fontStyle: FontStyle.normal,
      height: 2.0,
    );

    // AbrilFatface font for Western glyphs
    TextStyle customAbrilFatfaceStyle = new TextStyle(
      inherit: false,
      color: Colors.black,
      fontSize: 18.0,
      fontStyle: FontStyle.normal,
      fontFamily: 'AbrilFatface',
      height: 2.0,
    );

    // Nanum or Pilgiche for Korean/hangul
    TextStyle customKoreanFontStyle = new TextStyle(
      inherit: false,
      color: Colors.black,
      fontSize: 18.0,
      fontStyle: FontStyle.normal,
//      fontFamily: 'Nanum',
      fontFamily: 'Pilgiche',
      height: 2.0,
    );

    // Heiti font for Chinese
    TextStyle customChineseFontStyle = new TextStyle(
      inherit: false,
      color: Colors.black,
      fontSize: 18.0,
      fontStyle: FontStyle.normal,
      fontFamily: 'Heiti',
      height: 2.0,
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
              'Western default font: Just a test!',
              style: defaultStyle,
            ),
            new Text(
              'Western AbrilFatface font: Just a test!',
              style: customAbrilFatfaceStyle,
            ),
            new Text(
              'Korean default font, inherit=true: 한국어 \u{D55C}\u{AE00}',
              style: defaultStyleInherit,
            ),
            new Text(
              'Chinese default font, inherit=true: 中国 汉语',
              style: defaultStyleInherit,
            ),
            new Text(
              'Korean default font, inherit=false: 한국어 \u{D55C}\u{AE00}',
              style: defaultStyle,
            ),
            new Text(
              'Chinese default font, inherit=false: 中国 汉语',
              style: defaultStyle,
            ),
            koreanCustom,
            new Text(
              'Chinese Heiti font: 中国 汉语',
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
