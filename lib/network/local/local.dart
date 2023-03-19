import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences preferences;

Future<void> initpref() async {
  preferences = await SharedPreferences.getInstance();
}

Future<bool> saveDoctorId(String id) => preferences.setString('id', id);

Future<bool> removeDoctorId() => preferences.remove('id');

String getDoctorId() => preferences.getString('id');
