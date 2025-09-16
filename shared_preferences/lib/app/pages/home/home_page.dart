import 'package:estudo_shared_preferences/app/pages/home/widgets/counter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(
        bodyText2: TextStyle(color: Colors.white),
      )),
      home: new Scaffold(
        appBar: AppBar(
          title: Text(
            'Contador',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Counter(),
      ),
    );
  }
}
