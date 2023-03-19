import 'package:DoctorCom/constants/colors.dart';
import 'package:DoctorCom/widgets/responsive_ui.dart';
import 'package:flutter/material.dart';

class Ambulance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AmbulanceSreen();
  }
}

class AmbulanceSreen extends StatefulWidget {
  @override
  _AmbulanceSreenState createState() => _AmbulanceSreenState();
}

class _AmbulanceSreenState extends State<AmbulanceSreen> {
  double _height;
  double _width;
  double _pixelRatio;
  bool _large;
  bool _medium;

  /* void _selectScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return SignInPage();
    }));
  }*/

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
                    //  Opacity(opacity: 0.88, child: CustomAppBar5()),
                    // clipShape(),
                    SizedBox(height: _height / 10),
                    welcomeTextRow(),
                    SizedBox(height: _height / 1.5),
                    bildFloatingActionButton(),
                  ],
                ),
              ),
            )));
  }

  Widget welcomeTextRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 1500),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Ambulance",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: b2,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo',
              fontSize: _large ? 20 : (_medium ? 30 : 30),
            ),
          ),
        ],
      ),
    );
  }

  Widget bildFloatingActionButton() {
    return FloatingActionButton.extended(
      backgroundColor: b3,
      icon: Icon(Icons.location_on, color: w),
      label: Text(
        "Track on google maps",
        style: TextStyle(color: w),
      ),
      onPressed: () {},
    );
  }
}
