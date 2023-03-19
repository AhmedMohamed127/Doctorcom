import 'package:DoctorCom/DatePicker/DatePicker_Screen.dart';
import 'package:DoctorCom/Screens/homePage.dart';
import 'package:flutter/material.dart';

import 'package:DoctorCom/widgets/custom_shape.dart';
import 'package:DoctorCom/widgets/responsive_ui.dart';
import 'package:DoctorCom/constants/colors.dart';
import 'package:DoctorCom/constants/constants.dart';
import 'package:DoctorCom/screens/signin.dart';

class SignChose extends StatefulWidget {
  @override
  _SignChoseState createState() => _SignChoseState();
}

class _SignChoseState extends State<SignChose> {
  double _height;
  double _width;
  double _pixelRatio;
  bool _large;
  bool _medium;

  void _selectScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return SignInPage();
    }));
  }

  void navigationPage(String rout) {
    Navigator.of(context).pushNamed(rout);
  }

  void _navigationPage(String rout) {
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
            colorFilter: ColorFilter.linearToSrgbGamma()),
      ),
      child: Container(
        height: _height,
        width: _width,
        padding: EdgeInsets.only(bottom: 5),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              clipShape(),
              SizedBox(height: _height / 50),
              welcomeTextRow(),
              form(),
              SizedBox(height: _height / 40),
              signIn(),
              SizedBox(height: _height / 30),
              signUp(),
              SizedBox(height: _height / 20),
              skipeForNow(),
            ],
          ),
        ),
      ),
    ));
  }

  Widget clipShape() {
    //double height = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        //  masharfInfo(),
        Opacity(
          opacity: 0.75,
          child: ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
              height: _large
                  ? _height / 4
                  : (_medium ? _height / 3.75 : _height / 3.5),
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
                  ? _height / 4.5
                  : (_medium ? _height / 4.25 : _height / 4),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [b0, b3],
                ),
              ),
            ),
          ),
        ),
        Container(
          height: _height /4,
          
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(
              top: _large
                  ? _height / 10
                  : (_medium ? _height / 10 : _height / 20)),
          child: Image.asset(
            'assets/images/specialist.png',
            height: _height / 2.5,
            width: _width / 0.5,
          ),
        ),
        /*Container(
          height: _height / 2.5,
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(
              top: _large
                  ? _height / 30`
                  : (_medium ? _height / 30 : _height / 30)),
          child: Image.asset(
            'assets/images/background3.jpg',
            height: _height / 0.1,
            width: _width / 0.1,
            /*'assets/images/login.png',
            height: _height / 5.5,
            width: _width / 2.5,*/
          ),
        ),*/
      ],
    );
  }

  Widget welcomeTextRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 1500),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "DoctorCom",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: b2,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo',
              fontSize: _large ? 60 : (_medium ? 50 : 40),
            ),
          ),
        ],
      ),
    );
  }

  Widget signInTextRow() {
    return Container(
      margin: EdgeInsets.only(top: _width / 500.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Sign in to your account",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w200,
              fontSize: _large ? 20 : (_medium ? 17.5 : 15),
            ),
          ),
        ],
      ),
    );
  }

  Widget form() {
    return Container(
      margin: EdgeInsets.only(
          left: _width / 12.0, right: _width / 12.0, top: _height / 15.0),
      child: Form(
        child: Column(
          children: <Widget>[
            SizedBox(height: _height / 40.0),
          ],
        ),
      ),
    );
  }

  Widget signIn() {
    return ElevatedButton(
      onPressed: () {
        navigationPage(SIGN_IN);
        //  Navigator.of(context).pushNamed(SIGN_IN);
//_navigationPage(SIGN_IN);
        print("Routing to SIGN_IN Page");
      },
      child: Container(
        alignment: Alignment.center,
        /*  width: _large ? _width / 4 : (_medium ? _width / 3.75 : _width / 3.5),*/
        width: 300,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          gradient: LinearGradient(
            colors: [b3, b1],
          ),
        ),
        padding: const EdgeInsets.all(12.0),
        child: Text('SIGN IN',
            style: TextStyle(
              fontSize: _large ? 17 : (_medium ? 16 : 10), color: Colors.white,
              //  letterSpacing: 1
            )),
      ),
    );
  }

  Widget signUp() {
    return ElevatedButton(
      onPressed: () {
        final alert = AlertDialog(
          backgroundColor: Colors.indigo[50],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(32.0))),
          contentPadding: EdgeInsets.only(top: 10.0),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Text(
                    "SIGN UP AS ",
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: b3,
                    ),
                    textAlign: TextAlign.center,
                    softWrap: true,
                  ),
                ],
              )
            ],
          ),
          content: Container(
              width: 300.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                  ),
                ],
              )),
          actions: [
            Divider(
              color: Colors.black87,
              height: 0,
            ),
            SizedBox(height: 9),
            signUpAs(
              PATIENT_SIGN_UP,
              "PATIENT",
              "Routing to PATIENT_SIGN_UP",
              "assets/images/patient2.png",
            ),
            SizedBox(height: 8),
            signUpAs(
              DOCTOR_SIGN_UP,
              "DOCTOR",
              "Routing to DOCTOR_SIGN_UP",
              "assets/images/surgeon-doctor.png",
            ),
            SizedBox(height: 8),
          /*  signUpAs(
              PHARMACY_SIGN_UP,
              "PHARMACY",
              "Routing to PHARMACY_SIGN_UP",
              "assets/images/pharmacylogo.png",
            ),
            SizedBox(height: 8),*/
          ],
        );
        showDialog(
            context: context,
            builder: (BuildContext ctx) {
              return alert;
            });
        /*
        navigationPage(SIGN_UP);
        //  Navigator.of(context).pushNamed(SIGN_IN);

        print("Routing to SIGN_UP Page");
        */
      },
      child: Container(
        alignment: Alignment.center,
        /*  width: _large ? _width / 4 : (_medium ? _width / 3.75 : _width / 3.5),*/
        width: 300,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          gradient: LinearGradient(
            colors: [b3, b1],
          ),
        ),
        padding: const EdgeInsets.all(12.0),
        child: Text('SIGN UP',
            style: TextStyle(
              fontSize: _large ? 17 : (_medium ? 16 : 10), color: Colors.white,
              //  letterSpacing: 1
            )),
      ),
    );
  }

  Widget signUpAs(
      String rout, String title, String consolMessage, String image) {
    return ElevatedButton(
      onPressed: () {
        navigationPage(rout);
        //  Navigator.of(context).pushNamed(SIGN_IN);

        print(consolMessage);
      },
      child: Container(
          alignment: Alignment.center,
          /*  width: _large ? _width / 4 : (_medium ? _width / 3.75 : _width / 3.5),*/
          width: 500,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            /*    gradient: LinearGradient(
            colors: [b3, b1],*/

            //  ),
            color: b3,
          ),
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [SizedBox(width: 6), Image.asset(image)],
              ),
              Row(
                children: [
                  Text(title,
                      style: TextStyle(
                        fontSize: _large ? 17 : (_medium ? 16 : 10),
                        color: Colors.white,
                        //  fontWeight: FontWeight.bold
                        //  letterSpacing: 1
                      )),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.arrow_right),
                  SizedBox(width: 6),
                ],
              ),
            ],
          )),
    );
  }

  Widget skipeForNow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Skipe this Stip",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: _large ? 14 : (_medium ? 12 : 10)),
          ),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
              print("Routing to Home Page");
            },
            child: Text(
              "Skip!",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: b2,
                  fontSize: _large ? 19 : (_medium ? 17 : 15)),
            ),
          )
        ],
      ),
    );
  }
}
