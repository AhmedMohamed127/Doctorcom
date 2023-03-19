
import 'package:DoctorCom/Screens/Pharmacy/Pharmacy.dart';
import 'package:DoctorCom/Screens/ambulance.dart';
import 'package:DoctorCom/Screens/blod.dart';
import 'package:DoctorCom/Doctor_Screens/doctors.dart';
import 'package:DoctorCom/Screens/mainHome.dart';
import 'package:DoctorCom/constants/colors.dart';
import 'package:DoctorCom/widgets/responsive_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CustomBottomNavigat extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return CustomBottomNavigatScreen();
  }
}

class CustomBottomNavigatScreen extends StatefulWidget {
  @override
  _CustomBottomNavigatScreenState createState() =>
      _CustomBottomNavigatScreenState();
}

class _CustomBottomNavigatScreenState extends State<CustomBottomNavigatScreen> {
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

  PageController _pageController;
  int _pageSelectedPageIndix = 0;

  void _x1(int index) {
    setState(() {
      _pageSelectedPageIndix = index;
    });
  }

  List<Map<String, Object>> _pages = [
    {
      'page': Scaffold(
          body: PageView(
        physics: NeverScrollableScrollPhysics(),
        children: List.generate(4, (index) => MainHome()),
      )),
      'title': "Home"
    },
    {
      'page': Scaffold(
          body: PageView(
        physics: NeverScrollableScrollPhysics(),
        children: List.generate(4, (index) => Ambulance()),
      )),
      'title': "Ambulance"
    },
    {
      'page': Scaffold(
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          children: List.generate(
            4,
            (index) => Pharmacy(),
          ),
        ),
      ),
      'title': "Pharmacy"
    },
    {
      'page': Scaffold(
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          children: List.generate(
            4,
            (index) => Doctors(),
          ),
        ),
      ),
      'title': "Doctors"
    },
    {
      'page': Scaffold(
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          children: List.generate(
            4,
            (index) => BlodBank(),
          ),
        ),
      ),
      'title': "Blod"
    },
  ];

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    _pixelRatio = MediaQuery.of(context).devicePixelRatio;
    _large = ResponsiveWidget.isScreenLarge(_width, _pixelRatio);
    _medium = ResponsiveWidget.isScreenMedium(_width, _pixelRatio);

    return BottomNavigationBar(
      selectedItemColor: blu,
      unselectedItemColor: bla,
      currentIndex: _pageSelectedPageIndix,
      type: BottomNavigationBarType.fixed,
      //  type: BottomNavigationBarType.shifting,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Feather.home,
          ),
         // title: Text("Home"),
          //Container(height: 0.0),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.airport_shuttle_sharp),
        //  title: Text("Ambulance"),
          //Container(height: 0.0),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.medical_services), //title: Text("Pharmacy")
            //       Container(height: 0.0,),

            ),
        BottomNavigationBarItem(
          icon: Icon(Feather.user),
         // title: Text("Doctor"),
          //Container(height: 0.0),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_hospital),
          //title: Text("Blod"),
          //Container(height: 0.0),
        ),
      ],
      onTap: _x1,
    );
  }
}
