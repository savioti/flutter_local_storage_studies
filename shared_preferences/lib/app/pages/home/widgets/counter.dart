import 'package:estudo_shared_preferences/app/pages/home/module/home_module.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  final HomeModule _homeModule = HomeModule();
  var counter = 0;

  @override
  void initState() {
    _loadCounter();
    super.initState();
  }

  void _loadCounter() async {
    var _counter = await _homeModule.loadCounter();
    setState(() {
      counter = _counter;
    });
  }

  void _increment() {
    setState(() {
      counter++;
    });
    _homeModule.saveCounter(counter);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Contagem: $counter',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: _increment,
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
