import 'package:flutter/material.dart';
import 'package:flutter_mvp/AppConfig.dart';
import 'package:flutter_mvp/main.dart';

void main() {
  var configuredApp = new AppConfig(
    appName: 'Build flavors PRO',
    flavorName: 'production',
    apiBaseUrl: 'https://api.example.com/',
    child: MyHomePage(),
  );

  runApp(configuredApp);
}


