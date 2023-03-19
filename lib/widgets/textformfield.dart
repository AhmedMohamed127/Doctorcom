import 'package:DoctorCom/constants/colors.dart';
import 'package:DoctorCom/widgets/responsive_ui.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final TextEditingController textEditingController;
  final TextInputType keyboardType;
  final bool obscureText;
  final IconData icon;
  double _width;
  double _pixelRatio;
  bool large;
  bool medium;
  

  CustomTextField({
    this.hint,
    this.textEditingController,
    this.keyboardType,
    this.icon,
    this.obscureText = false,
    MaterialColor color,
  });

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _pixelRatio = MediaQuery.of(context).devicePixelRatio;
    large = ResponsiveWidget.isScreenLarge(_width, _pixelRatio);
    medium = ResponsiveWidget.isScreenMedium(_width, _pixelRatio);
    return Material(
      borderRadius: BorderRadius.circular(25.0),
      elevation: large ? 7 : (medium ? 7 : 7),
      child: TextFormField(
        controller: textEditingController,
        keyboardType: keyboardType,
        cursorColor: b2,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: b2, size: 20),
          hintText: hint,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }
  
}



                 
                    