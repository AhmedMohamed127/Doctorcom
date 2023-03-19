import 'package:DoctorCom/constants/colors.dart';
import 'package:DoctorCom/widgets/responsive_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MedReport extends StatelessWidget {
  @override
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
      appBar: AppBar(
        backgroundColor: b3,
        title: Text('Medical Report'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.linearToSrgbGamma()),
        ),
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  /* crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,*/
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        height: _height / 7,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(
                          top: _large
                              ? _height / 60
                              : (_medium ? _height / 200 : _height / 20),
                        ),
                        child: Image.asset(
                          'assets/images/doctor2.png',
                          height: _height / 6.5,
                          width: _width / 2.5,
                        )),
                    Container(
                        height: _height / 7,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(
                            top: _large
                                ? _height / 60
                                : (_medium ? _height / 200 : _height / 20)),
                        child: Image.asset(
                          'assets/images/logo3.png',
                          height: _height / 6.5,
                          width: _width / 1.8,
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    TextFormField(
                      onFieldSubmitted: (value1) {
                        print(value1);
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: 'Doctor Name:',
                          prefixIcon: Icon(Icons.accessibility_new),
                          border: OutlineInputBorder()),
                    ),
                    TextFormField(
                      onFieldSubmitted: (value1) {
                        print(value1);
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: 'Doctor Licence:',
                          prefixIcon: Icon(Icons.account_balance_outlined),
                          border: OutlineInputBorder()),
                    ),
                    TextFormField(
                      onFieldSubmitted: (value1) {
                        print(value1);
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: 'Hospital / Clinic:',
                          prefixIcon: Icon(Icons.add_business_sharp),
                          border: OutlineInputBorder()),
                    ),
                    TextFormField(
                      onFieldSubmitted: (value1) {
                        print(value1);
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: 'Speciality:',
                          prefixIcon: Icon(Icons.folder_special),
                          border: OutlineInputBorder()),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    TextFormField(
                      onFieldSubmitted: (value1) {
                        print(value1);
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: 'Patient Name:',
                          prefixIcon: Icon(Icons.accessibility_new),
                          border: OutlineInputBorder()),
                    ),
                    TextFormField(
                      onFieldSubmitted: (value1) {
                        print(value1);
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: 'Gender:', // 5aleha check box b2a
                          border: OutlineInputBorder()),
                    ),
                    TextFormField(
                      onFieldSubmitted: (value1) {
                        print(value1);
                      },
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                          labelText: 'Age:', border: OutlineInputBorder()),
                    ),
                    TextFormField(
                      onFieldSubmitted: (value1) {
                        print(value1);
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: 'Date:', border: OutlineInputBorder()),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    TextFormField(
                      maxLines: 10,
                      onFieldSubmitted: (value1) {
                        print(value1);
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: 'Drugs &  Amount:',
                          border: OutlineInputBorder()),
                    ),
                    TextFormField(
                      maxLines: 5,
                      onFieldSubmitted: (value1) {
                        print(value1);
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: 'Diagnoses:',
                          border: OutlineInputBorder()),
                    ),
                    TextFormField(
                      onFieldSubmitted: (value1) {
                        print(value1);
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: 'Prescription Number:',
                          border: OutlineInputBorder()),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
  
}
