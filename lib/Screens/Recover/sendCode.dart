import 'package:flutter/material.dart';
import 'package:DoctorCom/constants/colors.dart';
import 'package:DoctorCom/constants/constants.dart';
import 'package:DoctorCom/widgets/custom_shape.dart';
import 'package:DoctorCom/widgets/customappbar.dart';
import 'package:DoctorCom/widgets/responsive_ui.dart';
import 'package:DoctorCom/widgets/textformfield.dart';

class SendCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SendCodeScreen(),
    );
  }
}

class SendCodeScreen extends StatefulWidget {
  @override
  _SendCodeScreenState createState() => _SendCodeScreenState();
}

class _SendCodeScreenState extends State<SendCodeScreen> {
  double _height;
  double _width;
  double _pixelRatio;
  bool _large;
  bool _medium;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _key = GlobalKey();

  CustomAppBar ap = new CustomAppBar("");
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
              Opacity(opacity: 0.88, child: CustomAppBar("")),
              clipShape(),
              welcomeTextRow(),
              signInTextRow(),
              form(),
              SizedBox(height: _height / 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  submet(),
                  SizedBox(
                    width: 30,
                  ),
                  reSend(),
                ],
              )
            ],
          ),
        ),
      ),
    ));
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
                  ? _height / 8
                  : (_medium ? _height / 7 : _height / 6.5),
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
                  ? _height / 12
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
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(
              top: _large
                  ? _height / 90
                  : (_medium ? _height / 500 : _height / 50)),
          child: Image.asset(
            'assets/images/recover.png',
            height: _height / 4.5,
            width: _width / 2.5,
          ),
        ),
      ],
    );
  }

  Widget welcomeTextRow() {
    return Container(
      margin: EdgeInsets.only(left: _width / 20, top: _height / 70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Enter Code!",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: b2,
              fontWeight: FontWeight.bold,
              fontSize: _large ? 30 : (_medium ? 30 : 40),
            ),
          ),
        ],
      ),
    );
  }

  Widget form() {
    return Container(
      margin: EdgeInsets.only(
          left: _width / 12.0, right: _width / 12.0, top: _height / 30.0),
      child: Form(
        child: Column(
          children: <Widget>[
            resendTextFormField(),
          ],
        ),
      ),
    );
  }

  Widget resendTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.number,
      icon: Icons.confirmation_number,
      hint: "Enter Code here",
    );
  }

  Widget submet() {
    return ElevatedButton(
      onPressed: () {
        // navigationPage(NEW_PASS);
        _navigationPage(NEW_PASS);
        print("check submition Code Submetion!");
      },
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
          'Submet',
          style: TextStyle(fontSize: _large ? 14 : (_medium ? 12 : 10)),
        ),
      ),
    );
  }

  Widget reSend() {
    return ElevatedButton(
      onPressed: () {
        print("rsend code");
      },
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
          'Rsend code',
          style: TextStyle(fontSize: _large ? 14 : (_medium ? 12 : 10)),
        ),
      ),
    );
  }

  Widget signInTextRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 60.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Please Enter The Code We Have Send to you",
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          SizedBox(
            width: 1,
          ),
        ],
      ),
    );
  }
}
