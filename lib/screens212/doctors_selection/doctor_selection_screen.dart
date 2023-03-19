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
import 'package:DoctorCom/screens212/doctors_selection/categories/specialty/cardiology_screen.dart';
import 'package:DoctorCom/screens212/doctors_selection/categories/specialty/dentistry_screen.dart';
import 'package:DoctorCom/screens212/doctors_selection/categories/specialty/generalPractice_screen.dart';
import 'package:DoctorCom/screens212/doctors_selection/categories/specialty/nephrology_screen.dart';
import 'package:DoctorCom/screens212/doctors_selection/categories/specialty/nerology_screen.dart';
import 'package:DoctorCom/screens212/doctors_selection/categories/specialty/painManagement_screen.dart';
import 'package:DoctorCom/widgets/ZOzWidget.dart';
import 'package:flutter/material.dart';


import 'categories/specialty/audiology_screen.dart';

class DoctorSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DoctorSelection'),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text('Select By Specialty',style: TextStyle(fontSize: 30),),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){navigateTo(context, AudiologyScreen());},
              child: Card(
                color: Colors.blue,
                child: Center(child: Text('Audiology'),),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){navigateTo(context, DentistryScreen());},
              child: Card(
                color: Colors.blue,
                child: Center(child: Text('Dentistry'),),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){navigateTo(context, NeurologyScreen());},
              child: Card(
                color: Colors.blue,
                child: Center(child: Text('Neurology'),),
              ),
            ),
            InkWell(
              onTap: (){navigateTo(context, CardiologyScreen());},
              child: Card(
                color: Colors.blue,
                child: Center(child: Text('Cardiology'),),
              ),
            ),
            InkWell(
              onTap: (){navigateTo(context, GenreralParcticeScreen());},
              child: Card(
                color: Colors.blue,
                child: Center(child: Text('GenreralParctice'),),
              ),
            ),
            InkWell(
              onTap: (){navigateTo(context, NaphrologyScreen());},
              child: Card(
                color: Colors.blue,
                child: Center(child: Text('Naphrology'),),
              ),
            ),
            InkWell(
              onTap: (){navigateTo(context, PainManagementScreen());},
              child: Card(
                color: Colors.blue,
                child: Center(child: Text('PainManagement'),),
              ),
            ),


            SizedBox(height: 80,),

            Text('Select By Area',style: TextStyle(fontSize: 30),),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){navigateTo(context, CairoScreen());},
              child: Card(
                color: Colors.green,
                child: Center(child: Text('Cairo'),),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){navigateTo(context, GizaScreen());},
              child: Card(
                color: Colors.green,
                child: Center(child: Text('Giza'),),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){navigateTo(context, MinyaScreen());},
              child: Card(
                color: Colors.green,
                child: Center(child: Text('Minya'),),
              ),
            ),
            InkWell(
              onTap: (){navigateTo(context, AlexScreen());},
              child: Card(
                color: Colors.green,
                child: Center(child: Text('Alexandria'),),
              ),
            ),
            InkWell(
              onTap: (){navigateTo(context, AswanScreen());},
              child: Card(
                color: Colors.green,
                child: Center(child: Text('Aswan'),),
              ),
            ),
            InkWell(
              onTap: (){navigateTo(context, FaiyumScreen());},
              child: Card(
                color: Colors.green,
                child: Center(child: Text('Faiyum'),),
              ),
            ),
            InkWell(
              onTap: (){navigateTo(context, HelwanScreen());},
              child: Card(
                color: Colors.green,
                child: Center(child: Text('Helwan'),),
              ),
            ),
            InkWell(
              onTap: (){navigateTo(context, MonufiaScreen());},
              child: Card(
                color: Colors.green,
                child: Center(child: Text('Monufia'),),
              ),
            ),
            InkWell(
              onTap: (){navigateTo(context, QualubiaScreen());},
              child: Card(
                color: Colors.green,
                child: Center(child: Text('Qualubia'),),
              ),
            ),
            InkWell(
              onTap: (){navigateTo(context, SharqiaScreen());},
              child: Card(
                color: Colors.green,
                child: Center(child: Text('Sharqia'),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
