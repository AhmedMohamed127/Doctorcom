import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => widget),
            (Route<dynamic> route) => false);

Widget defaultTextBox({
  String title,
  String hint = ' ',
  bool isPassword = false,
  IconData icon ,
  Color iconColor,
  @required TextEditingController controller,
  @required TextInputType type,
}) => Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
      ),
      width: double.infinity,
      child: TextFormField(
        obscureText: isPassword,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: iconColor ,size: 20),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
          ),
         // hintText: hint,
          labelText: hint,
        ),
        controller: controller,
        keyboardType: type,
      ),
    );

Widget headText(String text) => Text(
      text,
      style: TextStyle(
        fontSize: 25,
      ),
    );

Widget captionText(String text) => Text(
      text,
      style: TextStyle(
        fontSize: 16,
      ),
    );

Widget detailsText(String text) => Text(
      text,
      style: TextStyle(
        fontSize: 14,
      ),
    );

Widget defaultButton({
  Color background = Colors.blue,
  double radius = 25.0,
  double width = double.infinity,
  @required Function function,
  @required String text,
  bool toUpper = true,
}) => Container(
  width: width,
  height: 40.0,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(radius),
    color: background,
  ),
  child: TextButton(
    onPressed: function,
    child: Text(
      toUpper ? text.toUpperCase() : text,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  ),
);


void showToast({@required text, @required bool error}) => Fluttertoast.showToast(
    msg: text.toString(),
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 10,
    backgroundColor: error ? Colors.red : Colors.green,
    textColor: Colors.white,
    fontSize: 16.0
);