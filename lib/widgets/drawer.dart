import 'package:DoctorCom/constants/colors.dart';
import 'package:DoctorCom/constants/constants.dart';

import 'package:flutter/material.dart';

import 'alertDialog.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainDrawer();
  }
}

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  bool isSwitched = false;
  void navigationPage(String rout) {
    Navigator.of(context).pushNamed(rout);
  }

  void _navigationPage(String rout) {
    Navigator.pushReplacementNamed(context, rout);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        //color: Colors.red,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                "User",
                style: TextStyle(color: w),
              ),
              accountEmail: Text(
                "example@gmail.com",
                style: TextStyle(color: w),
              ),
              arrowColor: b0,
              decoration: BoxDecoration(
                color: b3,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: y0,
                child: Text(
                  "U",
                  style: TextStyle(color: w, fontSize: 40.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.sticky_note_2,
                color: b3,
              ),
              title: Text('Profile'),
              onTap: () => {
              /*  showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return MyAlertDialog(
                        "You Need To SignIn First",
                        "Sign Up To Get Your Free Account",
                        Icons.account_circle,
                        "SignIn/SignUp",
                        SIGN_CHOSE);
                  },

                  //   navigationPage(SIGN_CHOSE)
                  //   navigationPage(MID_REPORT)
                )*/
              },
            ),
            ListTile(
              leading: Icon(
                Icons.sticky_note_2,
                color: b3,
              ),
              title: Text('Medical Report'),
              onTap: () => {
                navigationPage(CHAT),
                /*
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return MyAlertDialog(
                        "You Need To SignIn First",
                        "Sign Up To Get Your Free",
                        Icons.chevron_right,
                        "SignIn/SignUp",
                        SIGN_CHOSE);
                  },

                  //   navigationPage(SIGN_CHOSE)
                  //   navigationPage(MID_REPORT)
                )*/
              },
            ),
            ListTile(
              leading: Icon(
                Icons.my_location,
                color: b3,
              ),
              title: Text('Infected Area'),
            ),

            /////////////////////////////////////////////
            ///
            ///
            Container(
              child: SwitchListTile(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                    print(isSwitched);

                    if (isSwitched == false) {
                      b0 = Colors.white;
                      b1 = Color(0xff0486d1);
                      b2 = Color(0xff1d5b84);
                      b3 = Color(0xff022669);
                      b4 = Color(0xff003366);
                      b5 = Color(0xff125B81);
                      blu = Colors.blue;
                      litb = Color(0xff11aeb5);
                      bla = Color(0xff000000);
                      w = Colors.white;
                      print(isSwitched);

                      print(isSwitched);
                    } else if (isSwitched == true) {
                      b0 = Color(0xff159D6A); //appbar text
                      b1 = Color(0xff1D1D1D); //app
                      b2 = Color(0xff1D1D1D); //con
                      b3 = Color(0xff34495E);
                      b4 = Color(0xff17202A);
                      blu = Color(0xff17202A);
                      litb = Color(0xff0B5345);
                      bla = Color(0xff2874A6);
                      w = Color(0xff34495E);
                      print(isSwitched);
                      print(isSwitched);
                    }
                  });
                },
                secondary: new Icon(
                  Icons.swipe,
                  color: b3,
                ),
                activeTrackColor: b0,
                title: new Text("Dark Mode"),
              ),
            ),

            /*  Container(
              child: new SwitchListTile(
                value: v1,
                onChanged: changetodark,
                secondary: new Icon(
                  Icons.swipe,
                  color: y0,
                ),
                activeTrackColor: b0,
                title: new Text("Dark Mode"),
              ),
            ),*/
            ////////////////////////////////////////


            ListTile(
              leading: Icon(
                Icons.policy,
                color: b3,
              ),
              title: Text('Policy'),
            ),

            ListTile(
              leading: Icon(
                Icons.settings,
                color: b3,
              ),
              title: Text('Settings'),
            ),
               ListTile(
              leading: Icon(
                Icons.info,
                color: b3,
              ),
              title: Text('About Us'),
            ),

            //  SizedBox(height: 20),
            const SizedBox(height: 15),
            Container(
              width: 140,
              height: 2,
              color: Colors.grey[200],
            ),
            /*  const SizedBox(height: 20),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              onPressed: () {
                setState(() {
                  //navigationPage();
                    Navigator.of(context).pushReplacementNamed(SIGN_IN);
                });
              },
              //   color: Colors.black,
              child: Text(
                "Log Out",
                style: smallTxtStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  //color: appThemeColor.withOpacity(0.7),
                ),
              ),
            )*/
            ListTile(
                leading: Icon(
                  Icons.logout,
                  color: b3,
                ),
                title: Text('Log Oute'),
                onTap: () {
                  _navigationPage(SIGN_CHOSE);
//////////////////////ERRRORRRR HERE///////////////////////////
                  /*first erorr Yargala !!😁 :
when you clik on log out an return to sign in again the sigin in button get null*/
// To Resolve This Erorr Ithink we need to State Mangement !!
///////////////////////////////////////////////////////////////
                  /*  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) =>  ()),
                  );*/
                }),
          ],
        ),
      ),
    );
  }
}
