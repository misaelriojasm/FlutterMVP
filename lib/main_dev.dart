import 'package:flutter/material.dart';
import 'package:flutter_mvp/AppConfig.dart';
import 'package:flutter_mvp/main.dart';

void main() {
  var configuredApp = new AppConfig(
    appName: 'Build flavors DEV',
    flavorName: 'development',
    apiBaseUrl: 'https://dev-api.example.com/',
    child: MyHomePage(),
  );

  runApp(configuredApp);
}

