import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.grey),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Winehouse",
                  style: TextStyle(
                      fontSize: min(MediaQuery.of(context).size.height, MediaQuery.of(context).size.width) / 8, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: min(MediaQuery.of(context).size.height, MediaQuery.of(context).size.width) / 30),
                Text("Coming soon",
                    style: TextStyle(
                        fontSize: min(MediaQuery.of(context).size.height, MediaQuery.of(context).size.width) / 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey))
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(5.0),
                color: Colors.grey.shade200,
                child: Center(
                  child: Text(
                    '(주)와인하우스 Winehouse Inc. | 대표 : 권 경 호 | 서울특별시 구로구 디지털로 33길 48, 604호 (구로동, 대륭포스트타워 7차) | E-mail : admin@winehouse.io',
                    style:
                        TextStyle(color: Colors.grey[800], fontSize: min(MediaQuery.of(context).size.height, MediaQuery.of(context).size.width) / 50),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
