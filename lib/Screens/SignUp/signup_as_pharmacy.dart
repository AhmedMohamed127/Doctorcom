import 'package:DoctorCom/widgets/customappbar.dart';
import 'package:DoctorCom/widgets/dropdownValue.dart';
import 'package:flutter/material.dart';
import 'package:DoctorCom/constants/constants.dart';
import 'package:DoctorCom/constants/colors.dart';
import 'package:DoctorCom/widgets/custom_shape.dart';
import 'package:DoctorCom/widgets/responsive_ui.dart';
import 'package:DoctorCom/widgets/textformfield.dart';

class PharmacySignUpScreen extends StatefulWidget {
  @override
  _PharmacySignUpScreenState createState() => _PharmacySignUpScreenState();
}

class _PharmacySignUpScreenState extends State<PharmacySignUpScreen> {
  bool checkBoxValue = false;
  double _height;
  double _width;
  double _pixelRatio;
  bool _large;
  bool _medium;
  void navigationPage(String rout, String consolMessage) {
    Navigator.of(context).pushNamed(rout);
  }

  void _navigationPage(String rout, String consolMessage) {
    Navigator.pushReplacementNamed(context, rout);
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    _pixelRatio = MediaQuery.of(context).devicePixelRatio;
    _large = ResponsiveWidget.isScreenLarge(_width, _pixelRatio);
    _medium = ResponsiveWidget.isScreenMedium(_width, _pixelRatio);

    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover,
                 colorFilter: ColorFilter.linearToSrgbGamma()
              ),
            ),
      child:  
          Container(
          height: _height,
          width: _width,
          margin: EdgeInsets.only(bottom: 6),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Opacity(
                    opacity: 0.88, child: CustomAppBar("Pharmacy SignUp Form")),
                clipShape(),
                form(),
                acceptTermsTextRow(),
                button(),
                infoTextRow(),
                socialIconsRow(),
                signInTextRow(),
              ],
            ),
          ),
        ),
      ),)
     ;
  }

  Widget clipShape() {
    return Stack(
      children: <Widget>[
        Opacity(
          opacity: 0.75,
          child: ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
              height: _large
                  ? _height / 10
                  : (_medium ? _height / 8 : _height / 6.5),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [b0, b3],
                ),
              ),
            ),
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: ClipPath(
            clipper: CustomShapeClipper2(),
            child: Container(
              height: _large
                  ? _height / 14
                  : (_medium ? _height / 11 : _height / 10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [b0, b3],
                ),
              ),
            ),
          ),
        ),
        Container(
          height: _height / 10,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  spreadRadius: 0.0,
                  color: Colors.black26,
                  offset: Offset(1.0, 10.0),
                  blurRadius: 20.0),
            ],
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: GestureDetector(
              onTap: () {
                print('Adding photo');
              },
              child: Icon(
                Icons.add_a_photo,
                size: _large ? 40 : (_medium ? 33 : 31),
                color: litb,
              )),
        ),
//        Positioned(
//          top: _height/8,
//          left: _width/1.75,
//          child: Container(
//            alignment: Alignment.center,
//            height: _height/23,
//            padding: EdgeInsets.all(5),
//            decoration: BoxDecoration(
//              shape: BoxShape.circle,
//              color:  Colors.orange[100],
//            ),
//            child: GestureDetector(
//                onTap: (){
//                  print('Adding photo');
//                },
//                child: Icon(Icons.add_a_photo, size: _large? 22: (_medium? 15: 13),)),
//          ),
//        ),
      ],
    );
  }

  Widget form() {
    return Container(
      margin: EdgeInsets.only(
          left: _width / 20.0, right: _width / 20.0, top: _height / 90.0),
      child: Form(
        child: Column(
          children: <Widget>[
            firstNameTextFormField(),
            SizedBox(height: _height / 120.0),
            emailTextFormField(),
            SizedBox(height: _height / 120.0),
            phoneTextFormField(),
            SizedBox(height: _height / 120.0),
            passwordTextFormField(),
            SizedBox(height: _height / 120.0),
            addressTextFormField(),
            SizedBox(height: _height / 120.0),
            doctorsspecialty(),
          ],
        ),
      ),
    );
  }

  Widget doctorsspecialty() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: [
            Icon(
              Icons.notes,
              color: b3,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Branchs number",
              style: TextStyle(
                fontFamily: 'Cairo',
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.grey[700],

                // backgroundColor: Colors.grey[100],
              ),
            ),
          ],
        ),
        SizedBox(
          width: 30,
        ),
        DropDownValuebranchNum()
      ],
    );
  }

  Widget firstNameTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.text,
      icon: Icons.local_pharmacy,
      hint: "Pharmacy/Branch Name",
    );
  }

  Widget emailTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.emailAddress,
      icon: Icons.email,
      hint: "Email ID",
    );
  }

  Widget phoneTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.number,
      icon: Icons.phone,
      hint: "Mobile Number",
    );
  }

  Widget addressTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.text,
      icon: Icons.location_city,
      hint: "Address",
    );
  }

  Widget passwordTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.text,
      obscureText: true,
      icon: Icons.lock,
      hint: "Password",
    );
  }

  Widget acceptTermsTextRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 400.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(
              activeColor: b2,
              value: checkBoxValue,
              onChanged: (bool newValue) {
                setState(() {
                  checkBoxValue = newValue;
                });
              }),
          Text(
            "I accept all terms and conditions",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: _large ? 12 : (_medium ? 11 : 10)),
          ),
        ],
      ),
    );
  }

  Widget button() {
    return ElevatedButton(
      child: Container(
        alignment: Alignment.center,
//        height: _height / 20,
        width: _large ? _width / 4 : (_medium ? _width / 3.75 : _width / 3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          gradient: LinearGradient(
            colors: [b3, b1],
          ),
        ),
        padding: const EdgeInsets.all(12.0),
        child: Text(
          'SIGN UP',
          style: TextStyle(fontSize: _large ? 14 : (_medium ? 12 : 10)),
        ),
      ),
    );
  }

  Widget infoTextRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 75.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Or create using social media",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: _large ? 12 : (_medium ? 11 : 10)),
          ),
        ],
      ),
    );
  }

  Widget socialIconsRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 80.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("assets/images/googlelogo.png"),
          ),
          SizedBox(
            width: 20,
          ),
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("assets/images/fblogo.jpg"),
          ),
          SizedBox(
            width: 20,
          ),
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("assets/images/twitterlogo.jpg"),
          ),
        ],
      ),
    );
  }

  Widget signInTextRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Already have an account?",
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              _navigationPage(SIGN_IN, "Routing to Sign up screen");
            },
            child: Text(
              "Sign in",
              style: TextStyle(
                  fontWeight: FontWeight.w800, color: b2, fontSize: 19),
            ),
          )
        ],
      ),
    );
  }
}
