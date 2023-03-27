import 'package:flutter/material.dart';

import 'package:fontcodes/pages/home_page.dart';
import 'package:fontcodes/pages/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FontCodes',
      initialRoute: 'login',
      routes: {
        'home': (_) => HomePage(),
        'login': (_) => LoginScreen(),
      },
    );
  }
}
