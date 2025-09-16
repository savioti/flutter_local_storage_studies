import 'package:estudo_hive/app/app.dart';
import 'package:estudo_hive/repositories/hive/hive_repository.dart';
import 'package:flutter/material.dart';

void main() async {
  await HiveRepository.initialize();
  runApp(App());
}
