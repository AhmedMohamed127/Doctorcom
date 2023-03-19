/*
import 'package:doctorcom001/constants/colors.dart';

import 'package:doctorcom001/widgets/Searchmore.dart';
import 'package:doctorcom001/widgets/customButton.dart';
import 'package:doctorcom001/widgets/drawer.dart';
import 'package:doctorcom001/widgets/responsive_ui.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainHomePage();
  }
}

class MainHomePage extends StatefulWidget {
  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {

  @override
  Widget build(BuildContext context) {
    bool checkBoxValue = false;
    double _height;
    double _width;
    double _pixelRatio;
    bool _large;
    bool _medium;

    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    _pixelRatio = MediaQuery.of(context).devicePixelRatio;
    _large = ResponsiveWidget.isScreenLarge(_width, _pixelRatio);
    _medium = ResponsiveWidget.isScreenMedium(_width, _pixelRatio);
    bool isSwitched = false;

    return Scaffold(
      body: HomeScreen(),
      appBar: AppBar(
        backgroundColor: b4,
        title: Text(
          'HomePage',
          textAlign: TextAlign.center,
          style: TextStyle(color: w),
        ),
        iconTheme: IconThemeData(color: w), //for drawer icon color
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              color: w,
              onPressed: () {
                showSearch(context: context, delegate: Datasearch());
              })
        ],
      ),
      drawer: MyDrawer(),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _height;
  double _width;
  double _pixelRatio;
  bool _large;
  bool _medium;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _key = GlobalKey();
 /*void _selectScreen(BuildContext context) {
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

    return Material(
        child: Scaffold(
      body: Container(
        height: _height,
        width: _width,
        margin: EdgeInsets.only(bottom: 5),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //Opacity(opacity: 0.88, child: CustomAppBar2()),
              // SizedBox(
              //   height: _height / 35,
              // ),
              Container(
                color: b0,
                child: Image.network(
                  "",
                  fit: BoxFit.fitHeight,
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }

/*class HomePage extends StatefulWidget {
  @override
  
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
      );
  }*/
}

Widget myCustomButton(String rout, String title, String consolMessage) {
  var _large;
  var _medium;
  return RaisedButton(
    elevation: 1,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
    onPressed: () {
      navigationPage(rout);
      //  Navigator.of(context).pushNamed(SIGN_IN);

      print(consolMessage);
    },
    textColor: Colors.white,
    padding: EdgeInsets.all(.0),
    child: Container(
      alignment: Alignment.center,
      /*  width: _large ? _width / 4 : (_medium ? _width / 3.75 : _width / 3.5),*/
      width: 500,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        /*    gradient: LinearGradient(
            colors: [b3, b1],*/

        //  ),
        color: b3,
      ),
      padding: const EdgeInsets.all(12.0),
      child: Text(title,
          style: TextStyle(
            fontSize: _large ? 17 : (_medium ? 16 : 10), color: Colors.white,
            //  letterSpacing: 1
          )),
    ),
  );
}

//Example for how to call this method :
// myCustomButton(DOCTOR_SIGN_UP, "DOCTOR", "Routing to DOCTOR_SIGN_UP"),
*/