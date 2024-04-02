import 'package:flutter/material.dart';
import 'package:project/pages/login.page.dart';
import 'package:project/pages/register.page.dart';

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const LoginPage(),
    const RegisterPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/purple.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          _pages[_currentIndex],
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 72,
        width: MediaQuery.of(context).size.width,
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'My Account',
            ),
          ],
        ),
      ),
    );
  }
}
