import 'package:estudo_hive/pages/add/add_contact_page.dart';
import 'package:estudo_hive/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hive DEMO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lime,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.green[900]),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/add': (context) => AddContactPage(),
      },
    );
  }
}
