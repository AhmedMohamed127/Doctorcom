import 'package:DoctorCom/constants/colors.dart';
import 'package:DoctorCom/constants/constants.dart';
import 'package:DoctorCom/widgets/responsive_ui.dart';
import 'package:DoctorCom/widgets/search_widget_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MainHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainHomeScreen();
  }
}

class MainHomeScreen extends StatefulWidget {
  @override
  _MainHomeScreenState createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
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
            margin: EdgeInsets.only(left: 6),
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.lerp(
                    Alignment.topCenter, Alignment.bottomCenter, 0.2),
                fit: BoxFit.contain,
                image: AssetImage("assets/images/background3.jpg"),
                //   image: AssetImage("assets/images/background.png"),
                //  fit: BoxFit.cover,
                // colorFilter: ColorFilter.linearToSrgbGamma()
              ),
            ),
            child: Container(
              height: _height,
              width: _width,
              //  margin: EdgeInsets.only(left: 3),
              padding: EdgeInsets.only(bottom: 3),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    /* Image.network("https://png.pngtree.com/png-clipart/20190115/ourlarge/pngtree-doctors-medical-hospital-doctors-png-image_354887.jpg"),*/
                    SearchWidgetHome(),
                    SizedBox(height: _height / 2.7),
                    //    bildflatButton(),
                    //  Opacity(opacity: 0.88, child: CustomAppBar5()),
                    // clipShape(),
                    // welcomeTextRow(),
                    //   SizedBox(height: _height / 3),

                    ElevatedButton(onPressed: (){
                      setState(() {
                        Navigator.pushNamed(context, 'Conf');
                      });}, child: Text('Chat')),



                    myCustomButton(
                      () {
                        final alert = AlertDialog(
                          backgroundColor: Colors.indigo[50],
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0))),
                          contentPadding: EdgeInsets.only(top: 10.0),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Text(
                                    "Get Doctor By",
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
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
                            myCustomButton(
                              () => {
                                navigationPage(SPECIALTIES),
                                print("Routing to Medical Page"),
                              },
                              "Medical Specialist",
                              "assets/images/specialist.png",
                            ),
                            SizedBox(height: 9),
                            myCustomButton(
                              () => {
                                navigationPage(LOCATION),
                                print("Routing to Medical Page"),
                              },
                              "specific Location",
                              "assets/images/medical-locations.png",
                            ),
                            SizedBox(height: 20),
                          ],
                        );
                        showDialog(
                            context: context,
                            builder: (BuildContext ctx) {
                              return alert;
                            });
                        //  navigationPage(DOCTOR_SIGN_UP);

                        print("Show Doctor Alirt Dialog");
                      },
                      "Get DOCTOR",
                      "assets/images/surgeon-doctor.png",
                    ),
                    SizedBox(height: _height / 45),
                    myCustomButton(
                      () {
                        navigationPage(PHARMACY);

                        print("Routing to Medical Page");
                      },
                      "Get Medical",
                      "assets/images/pharmacists.png",
                    ),
                    SizedBox(height: _height / 45),
                    myCustomButton(
                      () {
                        navigationPage(AMBULANCE);

                        print("Routing to Ambulance Page");
                      },
                      "Get Ambulance",
                      "assets/images/ambulance.png",
                    ),
                    SizedBox(height: _height / 45),
                    myCustomButton(
                      () {
                        navigationPage(BLOD);

                        print("Routing to Blood Page");
                      },
                      "Get Blood",
                      "assets/images/blod.png",
                    ),
                    //  SizedBox(height: _height / 55),
                    // bildFloatingActionButton(),
                  ],
                ),
              ),
            )));
  }

  Widget bildFloatingActionButton() {
    double height = MediaQuery.of(context).size.height;

    return Container(
      child: FloatingActionButton.extended(
        icon: Icon(Icons.campaign_outlined),
        label: Text('Click to get an Emergency Sirvice'),
        backgroundColor: Color(0xFFFF493C),
        onPressed: () {},
        /*  label: Text('View on Google Maps'),*/
        //  icon: Icon(Icons.location_pin),
        //   backgroundColor: Colors.pink,
        isExtended: true,
        tooltip: "Click to get an Emergency Sirvice",
      ),
    );
  }

  Widget bildflatButton() {
    return Container(
        /*padding: EdgeInsets.fromLTRB(0, 5, 10, 5),
        margin: EdgeInsets.fromLTRB(0, 5, 10, 5),*/
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            color: Colors.white),
        height: MediaQuery.of(context).size.height * 0.35,
        width: MediaQuery.of(context).size.height * 0.10,
        child: Column(
/*     mainAxisAlignment: MainAxisAlignment.start,
   crossAxisAlignment: CrossAxisAlignment.stretch,*/
          children: [
            TextButton(
              child: Icon(Icons.campaign_outlined),
              onPressed: () {},
            )
          ],
        ));
  }

  Widget welcomeTextRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 1500),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Chose One Of Our Service",
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

  myCustomButton(Function onPress, String title, String image) {
    return ElevatedButton(
      onPressed: () {
        onPress();
      },
      child: Container(
          alignment: Alignment.center,
          /*  width: _large ? _width / 4 : (_medium ? _width / 3.75 : _width / 3.5),*/
          width: 325,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            gradient: LinearGradient(
              colors: [b3, b1],
            ),
            //  color: b3,
          ),
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 6), Image.asset(image),
              Text(title,
                  style: TextStyle(
                    fontSize: _large ? 17 : (_medium ? 16 : 10),
                    color: Colors.white,
                    //  letterSpacing: 1
                  )),
              Icon(Icons.arrow_right),
              SizedBox(width: 6),
            ],
          )),
    );
  }
}
