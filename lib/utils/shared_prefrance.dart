import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences preferences;

Future<void> initprefs() async {
  preferences = await SharedPreferences.getInstance();
}

Future<bool> saveToken(String token) => preferences.setString('userId', token);

Future<bool> removeToken() => preferences.remove('userId');

String getToken() => preferences.getString('userId');
