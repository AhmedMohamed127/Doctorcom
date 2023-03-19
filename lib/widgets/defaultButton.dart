import 'package:DoctorCom/constants/colors.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  Color background = kPrimaryColor,
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