import 'package:DoctorCom/constants/colors.dart';
import 'package:DoctorCom/widgets/drawer.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;

  const CustomAppBar(this.title);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        // height: height/10,
        width: width,
        padding: EdgeInsets.only(left: 15, top: 25),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [b0, b3]),
        ),
        child: Row(
          children: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {
                  print("pop");
                  Navigator.of(context).pop();
                }),
            Container(
              padding: EdgeInsets.only(left: 70, top: 0),
              child: Text(
                title,
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: w,
                  fontFamily: 'Cairo',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomAppBar2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        height: height / 10,
        width: width,
        padding: EdgeInsets.only(left: 15, top: 25),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [b0, b3]),
        ),
        child: Row(
          children: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {
                  print("pop");
                  Navigator.of(context).pop();
                })
          ],
        ),
      ),
    );
  }
}

class CustomAppBar3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        height: height / 10,
        width: width,
        padding: EdgeInsets.only(left: 15, top: 25),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [b0, b3]),
        ),
      ),
    );
  }
}

class CustomAppBar4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        height: height / 10,
        width: width,
        padding: EdgeInsets.only(left: 15, top: 25),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [b0, b3]),
        ),
        child: Row(
          children: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  print("pop");
                  Navigator.of(context).pop();
                })
          ],
        ),
      ),
    );
  }
}

class CustomAppBar5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          height: height / 10,
          width: width,
          padding: EdgeInsets.only(left: 15, top: 25),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [b0, b3]),
          ),
        ),
        MyDrawer(),
      ],
    );
  }
}

class CustomAppBar6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.linearToSrgbGamma()),
            ),
            child: AppBar(
              elevation: 0,
              brightness: Brightness.light,
              leading: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 30,
                      height: 5,
                      decoration: BoxDecoration(color: Colors.grey[900]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 15,
                      height: 5,
                      decoration: BoxDecoration(color: Colors.grey[900]),
                    ),
                  ],
                ),
              ),
              actions: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.lightGreen,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1561948955-570b270e7c36?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=259&q=80"),
                          fit: BoxFit.cover)),
                )
              ],
            )));
  }
}
