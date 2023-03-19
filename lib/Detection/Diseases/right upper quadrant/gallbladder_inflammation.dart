import 'package:DoctorCom/Detection/main.dart';
import 'package:flutter/material.dart';


class Cholecystitis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('gallbladder_inflammation'),
        ),
        body: Center(
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('''Signs and symptoms of cholecystitis may include:
           1-Severe pain in your upper right or center abdomen.
           2-Pain that spreads to your right shoulder or back.
           3-Tenderness over your abdomen when it's touched.
           4-Nausea.
           5-Vomiting.
           6-Fever.
           7-Pain in the upper or right half of the abdomen tends to appear after meals.
        '''),
            ElevatedButton(
              child: Text('booking General Practice Doctor'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Belly()),//مفروض يروح بقي لحجز دكتور جراحة(نفجيت لدكتور جراحة)
                );
              },
            ),
            ElevatedButton(
              child: Text('''
              Before starting your treatment plan, 
              your doctor will subject the patient to a range of tests that help make the right diagnosis, 
              such as blood tests, 
              X-ray,ct scansand hepatic bile imaging.
              >> X-ray booking'''),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Belly()),//مفروض يروح بقي لصفحة مراكز الاشعة
                );
              },
            ),
            ElevatedButton(
              child: Text('Home Screen'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ]),
        ));
  }
}