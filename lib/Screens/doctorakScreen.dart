import 'package:DoctorCom/Detection/main.dart';
import 'package:DoctorCom/constants/colors.dart';
import 'package:DoctorCom/widgets/responsive_ui.dart';
import 'package:flutter/material.dart';

import 'Doctorak/anatomyImages.dart';

class DoctorakScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DoctorakSreen();
  }
}

class DoctorakSreen extends StatefulWidget {
  @override
  _DoctorakSreenState createState() => _DoctorakSreenState();
}

class _DoctorakSreenState extends State<DoctorakSreen> {
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
            decoration: BoxDecoration(color: w
                /*image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.linearToSrgbGamma()),*/
                ),
            child: Container(
              height: _height,
              width: _width,
              padding: EdgeInsets.only(bottom: 5),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: [
                     InkWell(
                       onTap: ()=>{
                       Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => Belly())),
    },
                       child:    Image.asset("assets/images/body1.png",
                           fit: BoxFit.contain),
                     ),
                        Opacity(
                          opacity: 0.2,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0),
                            height: 130,
                            width: 250,
                            color: bla,
                          ),
                        ),
                        SizedBox(height: _height / 300),
                        Opacity(
                          opacity: 0.2,
                          child: Container(
                            child: Text(
                              "cdscdcsc",
                              style: TextStyle(color: bla),
                            ),
                            margin: EdgeInsets.fromLTRB(0.0, 200.0, 0.0, 0),
                            height: 130,
                            width: 250,
                            color: bla,
                          ),
                        ),
                        SizedBox(height: _height / 300),
                        Opacity(
                          opacity: 0.2,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.0, 370.0, 0.0, 0),
                            height: 130,
                            width: 250,
                            color: bla,
                          ),
                        ),

                        Column(
                          children: [
                            SizedBox(height: 60),
                            SizedBox(width: 80),
                            bildIconButton("1"),
                            SizedBox(
                              height: 130,
                              width: 80,
                            ),
                            bildIconButton("2"),
                            SizedBox(height: 130),
                            bildIconButton("3"),
                            SizedBox(height: 350),
                            bildIconButton("4"),
                          ],
                        )

                        //  SizedBox(height: _height / 100),
                        /* Image.network(
                        "https://images-na.ssl-images-amazon.com/images/I/61YZEeEUBOL._AC_UL1001_.jpg"),*/
                        //  Opacity(opacity: 0.88, child: CustomAppBar5()),
                        // clipShape(),

                        // SizedBox(height: _height / 30),
                        //  welcomeTextRow(),
                        // SizedBox(height: _height / 20),
                      ],
                    )
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
            "Do you feel you are not Ok\nYour doctor is here to help you",
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

  Widget bildIconButton(
    String number,
  ) {
    //double height = MediaQuery.of(context).size.height;
    return RawMaterialButton(
      onPressed: () {},
      //onPressed: () => onpress,
      constraints: BoxConstraints(),
      elevation: 2.0,
      fillColor: b3,
      child: Text(
        number,
        style: TextStyle(color: w),
      ),
      padding: EdgeInsets.all(15.0),
      shape: CircleBorder(),
    );
  }
}
