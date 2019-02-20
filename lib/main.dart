import 'package:flutter/material.dart';
import 'package:flutter_mvp/AppConfig.dart';
import 'package:flutter_mvp/screens/screen.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var config = AppConfig.of(context);

    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage2(),
    );
  }

}