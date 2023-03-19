import 'package:DoctorCom/Screens/doctorakScreen.dart';
import 'package:DoctorCom/constants/colors.dart';
import 'package:DoctorCom/widgets/Searchmore.dart';
import 'package:DoctorCom/widgets/alertDialog.dart';
import 'package:DoctorCom/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'Doctorak/BodyLower.dart';
import 'Doctorak/bodyUper.dart';
import 'Doctorak/head.dart';

class Doctorak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: b3,
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: b3,
          appBar: AppBar(
            backgroundColor: b3,
            bottom: TabBar(
              tabs: [
                Tab(text: "Body", icon: Icon(MdiIcons.humanHandsdown)),
                Tab(text: "Head", icon: Icon(MdiIcons.head)),
                Tab(text: "Uper Part", icon: Icon(MdiIcons.humanHandsup)),
                Tab(text: "Lower Part", icon: Icon(MdiIcons.humanMale)),
              ],
            ),
            title: Text('Doctorak'),
            actions: <Widget>[
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF0097A1),
                    ),
                    child: InkWell(
                        child: Icon(
                          Icons.notifications,
                        ),
                        onLongPress: () {
                          Text("notifications");
                        },
                        onTap: () => {}),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFF493C),
                    ),
                    child: InkWell(
                      onLongPress: () {
                        Text("Click to get an Emergency Sirvice");
                      },
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return VoicePay();
                          },
                        );
                      },
                      child: Icon(
                        Icons.campaign_outlined,
                      ),
                    ),
                  ),
                ],
              ),

              /* IconButton(
                    icon: Icon(Icons.search),
                    color: w,
                    onPressed: () {
                      showSearch(context: context, delegate: Datasearch());
                    }),*/
            ],
          ),
          drawer: MyDrawer(),
          body: TabBarView(
            children: [
              DoctorakScreen(),
              HumanHead(),
              UperBody(),
              LowerBody(),
            ],
          ),
        ),
      ),
    );
  }
}

class MissedCallsPage extends StatefulWidget {
  @override
  // ignore: missing_return
  State<StatefulWidget> createState() {
    // TODO: implement createState    return new _MissedCallsPage();
  }
}

class Contact {
  final String fullName;
  final String email;

  const Contact({this.fullName, this.email});
}
