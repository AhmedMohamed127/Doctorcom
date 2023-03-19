import 'package:DoctorCom/Doctor_Screens/doctors.dart';
import 'package:DoctorCom/constants/colors.dart';
import 'package:DoctorCom/screens212/doctors_selection/categories/specialty/audiology_screen.dart';
import 'package:DoctorCom/screens212/doctors_selection/categories/specialty/cardiology_screen.dart';
import 'package:DoctorCom/screens212/doctors_selection/categories/specialty/dentistry_screen.dart';
import 'package:DoctorCom/screens212/doctors_selection/categories/specialty/generalPractice_screen.dart';
import 'package:DoctorCom/screens212/doctors_selection/categories/specialty/nephrology_screen.dart';
import 'package:DoctorCom/screens212/doctors_selection/categories/specialty/nerology_screen.dart';
import 'package:DoctorCom/screens212/doctors_selection/categories/specialty/painManagement_screen.dart';
import 'package:DoctorCom/widgets/ZOzWidget.dart';
import 'package:DoctorCom/widgets/responsive_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class Specialties extends StatefulWidget {
  @override
  _SpecialtiesState createState() => _SpecialtiesState();
}

class _SpecialtiesState extends State<Specialties> {
  List str = [
    "Neurology",
    "Audiology",
    "Cardiology",
    "Naphrology",
    "GeneralPractice",
    "PainManagement",
    "Dentistry",
  ];
  List images = [
    "assets/images/brain.jpeg",
    "assets/images/ear.jpeg",
    "assets/images/heart.jpeg",
    "assets/images/kidney.jpeg",
    "assets/images/stethoscope.jpeg",
    "assets/images/syringe.jpeg",
    "assets/images/tooth.jpeg",
  ];
  void navigationPage(String rout) {
    Navigator.of(context).pushNamed(rout);
  }

  Widget build(BuildContext context) {
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
              body:
              ListView(
                children: [
                  InkWell(
                  onTap: (){navigateTo(context, NeurologyScreen());},
              child:
                  Card(
                    child: ListTile(
                      title: Text("Neurology"),
                      leading: Image.asset("assets/images/brain.jpeg"),
                    ),
                  ),
                  ),
                  InkWell(
                    onTap: (){navigateTo(context, AudiologyScreen());},
                      child: Card(
                      child: ListTile(
                        title: Text("Audiology"),
                        leading: Image.asset("assets/images/ear.jpeg"),
                      ),
                    ),
                  ),
                  InkWell(
                      onTap: (){navigateTo(context, CardiologyScreen());},
                    child: Card(
                      child: ListTile(
                        title: Text("Cardiology"),
                        leading: Image.asset("assets/images/heart.jpeg"),

                      ),
                    ),
                  ),
                  InkWell(
                      onTap: (){navigateTo(context, NaphrologyScreen());},
                      child: Card(
                      child: ListTile(
                        title: Text("Naphrology"),
                        leading: Image.asset("assets/images/kidney.jpeg"),

                      ),
                    ),
                  ),
                  InkWell(
                      onTap: (){navigateTo(context, GenreralParcticeScreen());},
                      child: Card(
                      child: ListTile(
                        title: Text("GenreralParctice"),
                        leading: Image.asset("assets/images/stethoscope.jpeg"),

                      ),
                    ),
                  ),
                  InkWell(
                      onTap: (){navigateTo(context, PainManagementScreen());},
                      child: Card(
                      child: ListTile(
                        title: Text("PainManagement"),
                        leading: Image.asset("assets/images/syringe.jpeg"),
                      ),
                    ),
                  ),
                  InkWell(
                      onTap: (){navigateTo(context, DentistryScreen());},
                     child: Card(
                      child: ListTile(
                        title: Text("Dentistry"),
                        leading: Image.asset("assets/images/tooth.jpeg"),
                      ),
                    ),
                  ),

                ],
              ),
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
