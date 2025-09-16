import 'package:shared_preferences/shared_preferences.dart';

class HomeModule {
  late SharedPreferences _sharedPreferences;

  Future<void> saveCounter(int counter) async {
    await _sharedPreferences.setInt('counter', counter);
  }

  Future<int> loadCounter() async {
    var prefs = await SharedPreferences.getInstance();

    if (prefs.getKeys().contains('counter')) {
      return prefs.getInt('counter')!;
    }

    return 0;
  }
}
