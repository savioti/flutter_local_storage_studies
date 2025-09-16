import 'package:estudo_shared_preferences/app/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Preferences DEMO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white))),
      home: HomePage(),
    );
  }
}
