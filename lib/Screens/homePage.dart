 
import 'package:DoctorCom/Blog/Screen/blog.dart';
 
import 'package:DoctorCom/Screens/questionScreen.dart';
import 'package:DoctorCom/constants/colors.dart';
import 'package:DoctorCom/widgets/Searchmore.dart';
import 'package:DoctorCom/widgets/alertDialog.dart';
import 'package:DoctorCom/widgets/drawer.dart';
import 'package:DoctorCom/widgets/responsive_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'doctorak.dart';
import 'mainHome.dart';
import 'offersScreen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
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

  final List<Map<String, Object>> _pages = [
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
        children: List.generate(4, (index) => Questions()),
      )),
      'title': "Ask community"
    },
    {
      'page': Scaffold(
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          children: List.generate(
            4,
            (index) => Doctorak(),
          ),
        ),
      ),
      'title': "Doctorak"
    },
    {
      'page': Scaffold(
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          children: List.generate(
            4,
            (index) => Offers(),
          ),
        ),
      ),
      'title': "Latest offers"
    },
    {
      'page': Scaffold(
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          children: List.generate(
            4,
            (index) => Blog(),
          ),
        ),
      ),
      'title': "Blog"
    },
  ];

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    _pixelRatio = MediaQuery.of(context).devicePixelRatio;
    _large = ResponsiveWidget.isScreenLarge(_width, _pixelRatio);
    _medium = ResponsiveWidget.isScreenMedium(_width, _pixelRatio);

    if (_pageSelectedPageIndix == 2) {
      return Material(
        child: Scaffold(
          body: _pages[_pageSelectedPageIndix]['page'],
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: w,
              primaryColor: Theme.of(context).accentColor,
              textTheme: Theme.of(context).textTheme.copyWith(
                    caption: TextStyle(color: Colors.grey[500]),
                  ),
            ),
            child: BottomNavigationBar(
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
                  label:"Home",
                  //Container(height: 0.0),
                ),
                BottomNavigationBarItem(
                  icon: Icon(MdiIcons.headQuestionOutline),
                  label:"Ask Question",
                  //Container(height: 0.0),
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.medical_services),
                    label: "Doctorak",
                    //       Container(height: 0.0,),

                    ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.local_offer_sharp),
                  label: "Latest offers",
                  //Container(height: 0.0),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.assistant),
                  label: "Blog",
                  //Container(height: 0.0),
                ),
              ],
              onTap: _x1,
            ),
          ),
        ),
      );
    } else {
      return Material(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: b3,
                title: Text(
                  _pages[_pageSelectedPageIndix]['title'],
                ),
                actions: <Widget>[
                  Row(
                children: [
                  Container(
                    child: InkWell(
                        child: Icon(
                          Icons.notifications,
                        ),
                        onLongPress: () {
                          Text("notifications");
                        },
                        onTap: () => {}),
                    margin: EdgeInsets.only(right: 20),
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF0097A1),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: InkWell(
                      child: Icon(
                        Icons.campaign_outlined,
                      ),
                      onLongPress: () {
                        Text("Emergency Service");
                      },
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return VoicePay();
                          },
                        );
                      },
                    ),
                    margin: EdgeInsets.only(right: 20),
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFF493C),
                    ),
                  ),
                ],
              ),
                  
                ],
              ),
              drawer: MyDrawer(),
              body: _pages[_pageSelectedPageIndix]['page'],
              bottomNavigationBar: Theme(
                  data: Theme.of(context).copyWith(
                    canvasColor: w,
                    primaryColor: Theme.of(context).accentColor,
                    textTheme: Theme.of(context).textTheme.copyWith(
                          caption: TextStyle(color: Colors.grey[500]),
                        ),
                  ),
                  child: BottomNavigationBar(
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
                        label: "Home",
                        //Container(height: 0.0),
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(MdiIcons.headQuestionOutline),
                        label: "Ask Question",
                        //Container(height: 0.0),
                      ),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.medical_services),
                          label: "Doctorak"
                          //       Container(height: 0.0,),

                          ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.local_offer_sharp),
                        label: "Latest offers",
                        //Container(height: 0.0),
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.assistant),
                        label: "Blog",
                        //Container(height: 0.0),
                      ),
                    ],
                    onTap: _x1,
                  ))));
    }
  }
}
