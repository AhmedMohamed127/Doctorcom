import 'package:DoctorCom/Blog/Screen/blog.dart';
import 'package:DoctorCom/Doctor_Screens/apoitment.dart';
import 'package:DoctorCom/Screens/homePage.dart';
import 'package:DoctorCom/Screens/offersScreen.dart';
import 'package:DoctorCom/Screens/questionScreen.dart';
import 'package:DoctorCom/components/appointment_card.dart';
import 'package:DoctorCom/constants/colors.dart';
import 'package:DoctorCom/widgets/alertDialog.dart';
import 'package:DoctorCom/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'appointment_request_page.dart';

class DoctorScreen extends StatefulWidget {
  @override
  _DoctorScreenState createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {


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
            children: List.generate(3, (index) => Apoitment()),
          )),
      'title': "Home"
    },
    {
      'page': Scaffold(
          body: PageView(
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(3, (index) => Questions()),
          )),
      'title': "Ask community"
    },

    {
      'page': Scaffold(
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          children: List.generate(
            3,
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
            3,
                (index) => Blog(),
          ),
        ),
      ),
      'title': "Blog"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        backgroundColor: Color(0xffF3F6FF),
        body: _pages[_pageSelectedPageIndix]['page'],
        bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: w,
              primaryColor: Theme
                  .of(context)
                  .accentColor,
              textTheme: Theme
                  .of(context)
                  .textTheme
                  .copyWith(
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
                 // title: Text("Home"),
                  //Container(height: 0.0),
                ),
                BottomNavigationBarItem(
                  icon: Icon(MdiIcons.headQuestionOutline),
                //  title: Text("Community"),
                  //Container(height: 0.0),
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.local_offer),
                  //  title: Text("Add Offer")
                  //       Container(height: 0.0,),

                ),

                BottomNavigationBarItem(
                  icon: Icon(Icons.assistant),
                //  title: Text("News"),
                  //Container(height: 0.0),
                ),
              ],
              onTap: _x1,
            )))
    ;
  }


}
