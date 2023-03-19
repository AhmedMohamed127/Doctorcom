import 'package:DoctorCom/constants/colors.dart';
import 'package:DoctorCom/screens212/doctors_selection/categories/area/Alexandria_screen.dart';
import 'package:DoctorCom/screens212/doctors_selection/categories/area/Aswan_screen.dart';
import 'package:DoctorCom/screens212/doctors_selection/categories/area/Faiyum_screen.dart';
import 'package:DoctorCom/screens212/doctors_selection/categories/area/Helwan_screen.dart';
import 'package:DoctorCom/screens212/doctors_selection/categories/area/Monufia_screen.dart';
import 'package:DoctorCom/screens212/doctors_selection/categories/area/Qualubia_screen.dart';
import 'package:DoctorCom/screens212/doctors_selection/categories/area/Sharqia_screen.dart';
import 'package:DoctorCom/screens212/doctors_selection/categories/area/cairo_screen.dart';
import 'package:DoctorCom/screens212/doctors_selection/categories/area/giza_screen.dart';
import 'package:DoctorCom/screens212/doctors_selection/categories/area/minya_screen.dart';
import 'package:DoctorCom/widgets/ZOzWidget.dart';
import 'package:DoctorCom/widgets/responsive_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Doctor_Screens/doctors.dart';


class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {

  void navigationPage(String rout) {
    Navigator.of(context).pushNamed(rout);
  }

  List<String> str = [
    "Cairo",
    "Giza",
    "Qalubia",
    "Helwan",
    "Sharqia",
    "Minya",
    "Alexandria",
    "Monufia",
    " Faiyum",
    "Aswan",
  ];
  List<String> images = [
    "https://www.marefa.org/images/thumb/5/5e/Egypt%2C_administrative_divisions_-_Nmbrs_-_colored.svg/675px-Egypt%2C_administrative_divisions_-_Nmbrs_-_colored.svg.png",

  ];

  Widget build(BuildContext context) {
    double _height;
    double _width;
    double _pixelRatio;
    bool _large;
    bool _medium;
    _height = MediaQuery
        .of(context)
        .size
        .height;
    _width = MediaQuery
        .of(context)
        .size
        .width;
    _pixelRatio = MediaQuery
        .of(context)
        .devicePixelRatio;
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

    //  backgroundColor: Colors.white,
    child: NestedScrollView(
    headerSliverBuilder:
    (BuildContext context, bool innerBoxScrolled) {
    return <Widget>[
    //   createSilverAppBar1(),
    createSilverAppBar2()
    ];
    },
    body: ListView(
    children: [
    InkWell(
    onTap: (){navigateTo(context, AlexScreen());},
    child:
    Card(
    child: ListTile(
    title: Text("Alexandria"),
    leading: Image.network(images[0]),    ),
    ),
    ),
    InkWell(
    onTap: (){navigateTo(context, AswanScreen());},
    child: Card(
    child: ListTile(
    title: Text("Aswan"),
    leading: Image.network(images[0]),    ),
    ),
    ),
    InkWell(
    onTap: (){navigateTo(context, CairoScreen());},
    child: Card(
    child: ListTile(
    title: Text("Cairo"),
    leading: Image.network(images[0]),
    ),
    ),
    ),
    InkWell(
    onTap: (){navigateTo(context, FaiyumScreen());},
    child: Card(
    child: ListTile(
    title: Text("Faiyum"),
    leading: Image.network(images[0]),

    ),
    ),
    ),
    InkWell(
    onTap: (){navigateTo(context, GizaScreen());},
    child: Card(
    child: ListTile(
    title: Text("Giza"),
    leading: Image.network(images[0]),

    ),
    ),
    ),
    InkWell(
    onTap: (){navigateTo(context, HelwanScreen());},
    child: Card(
    child: ListTile(
    title: Text("Helwan"),
    leading: Image.network(images[0]),
    ),
    ),
    ),
    InkWell(
    onTap: (){navigateTo(context, MinyaScreen());},
    child: Card(
    child: ListTile(
    title: Text("Minya"),
    leading: Image.network(images[0]),
    ),
    ),
    ),
    InkWell(
    onTap: (){navigateTo(context, MonufiaScreen());},
    child: Card(
    child: ListTile(
    title: Text("Monufia"),
    leading: Image.network(images[0]),
    ),
    ),
    ),
    InkWell(
    onTap: (){navigateTo(context, QualubiaScreen());},
    child: Card(
    child: ListTile(
    title: Text("Qualubia"),
    leading: Image.network(images[0]),
    ),
    ),
    ),
    InkWell(
    onTap: (){navigateTo(context, SharqiaScreen());},
    child: Card(
    child: ListTile(
    title: Text("Sharqia"),
    leading: Image.network(images[0]),
    ),
    ),
    ),

    ],
    ),

    /*ListView.builder(
    padding: const EdgeInsets.all(10.0),
    itemCount: str.length,
    itemBuilder: (context, index) {
    return Card(
    child: ListTile(
    title: Text(str[index]),
    leading: Image.network(images[0]),
    ),
    );

    ),*/
    )));

/*
    return Scaffold(
            appBar: AppBar(
          backgroundColor: b3,
          title: Text(""),
          actions: [
       
          ],
        ), 

        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.linearToSrgbGamma()),
            ),
            child: Stack(
              alignment: Alignment.topCenter,

              children: [
                 SizedBox(height: 17.0),
                
                //  height: 100.0, 
              ListView.builder(
                    padding: const EdgeInsets.all(10.0),
                    itemCount: str.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text(str[index]),
                          leading: Image.asset(images[index]),
                          onTap: () {
                            navigationPage(DOCTORS);
                          },
                        ),
                      );
                    },
                  ),
              
              ],
            )));*/
    }

    SliverAppBar createSilverAppBar1() {
    return SliverAppBar(
    backgroundColor: b3,
    expandedHeight: 300,
    floating: false,
    elevation: 0,
    flexibleSpace: LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
    return FlexibleSpaceBar(
    collapseMode: CollapseMode.parallax,
    background: Container(
    color: Colors.white,
    child: Image.asset(
    'assets/mainBackImage.jpg',
    fit: BoxFit.cover,
    ),
    ),
    );
    }),
    );
    }

    SliverAppBar createSilverAppBar2() {
    return SliverAppBar(
    backgroundColor: b3,
    pinned: true,
    title: Container(
    margin: EdgeInsets.symmetric(horizontal: 10),
    height: 40,
    decoration: BoxDecoration(
    boxShadow: <BoxShadow>[
    BoxShadow(
    color: Colors.grey.withOpacity(0.6),
    offset: const Offset(1.1, 1.1),
    blurRadius: 5.0),
    ],
    ),
    child: CupertinoTextField(
    // controller: _filter,
    keyboardType: TextInputType.text,
    placeholder: 'Search',
    placeholderStyle: TextStyle(
    color: Color(0xffC4C6CC),
    fontSize: 14.0,
    fontFamily: 'Brutal',
    ),
    prefix: Padding(
    padding: const EdgeInsets.fromLTRB(5.0, 5.0, 0.0, 5.0),
    child: Icon(
    Icons.search,
    size: 18,
    color: Colors.black,
    ),
    ),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8.0),
    color: Colors.white,
    ),
    ),
    ),
    );
    }
  }