import 'package:flutter/material.dart';
import 'package:project/pages/login.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        bannerTheme: MaterialBannerThemeData(backgroundColor: Colors.pink[100]),
      ),
      home: LoginPage(),
    );
  }
}

