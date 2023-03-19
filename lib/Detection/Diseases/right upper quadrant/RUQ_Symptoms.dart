import 'package:flutter/material.dart';

import 'Hepatitis_B.dart';
import 'Kidney_stones.dart';
import 'Pneumonia.dart';
import 'Ulcerative_colitis.dart';
import 'gallbladder_inflammation.dart';

class RUQSymptoms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Right Upper Quadrant Symptoms'),
        ),
        body: new SingleChildScrollView(
            child: Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('''
              1-Severe pain in your upper right or center abdomen.
              2-Pain that spreads to your right shoulder or back.
              3-Tenderness over your abdomen when it's touched.
              4-Nausea.
              5-Vomiting.
              6-Fever.
              7-Pain in the upper or right half of the abdomen tends to appear after meals'''),
            ElevatedButton(
              child: Text('Click Here'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cholecystitis()),
                );
              },
            ),
            Text('''
            1-Diarrhea, often with blood or pus
            2-Abdominal pain and cramping
            3-Rectal pain
            4-Rectal bleeding — passing small amount of blood with stool
            5-Urgency to defecate
            6-Inability to defecate despite urgency
            7-Weight loss
            8-Fatigue
            9-Fever
            10-In children, failure to grow
            '''),
            ElevatedButton(
              child: Text('Click Here'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UlcerativeColitis()),
                );
              },
            ),
            Text('''
              1-Abdominal pain
              2-Dark urine
              3-Fever
              4-Joint pain
              5-Loss of appetite
              6-Nausea and vomiting
              7-Weakness and fatigue
              8-Yellowing of your skin and the whites of your eyes (jaundice)
                  '''),
            ElevatedButton(
              child: Text('Click Here'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HepatitisB()),
                );
              },
            ),
            Text('''
               1-Chest pain when you breathe or cough.
               2-Confusion or changes in mental awareness (in adults age 65 and older).
               3-Cough, which may produce phlegm.
               4-Fatigue.
               5-Fever, sweating and shaking chills.
               6-Lower than normal body temperature (in adults older than age 65 and people with weak immune systems).
               7-Nausea, vomiting or diarrhea.
               8-Shortness of breath.
                  '''),
            ElevatedButton(
              child: Text('Click Here'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pneumonia()),
                );
              },
            ),
            Text('''
               1-Severe, sharp pain in the side and back, below the ribs.
               2-Pain that radiates to the lower abdomen and groin.
               3-Pain that comes in waves and fluctuates in intensity.
               4-Pain or burning sensation while urinating.
              Other signs and symptoms may include:
               5-Pink, red or brown urine.
               6-Cloudy or foul-smelling urine.
               7-A persistent need to urinate, urinating more often than usual or urinating in small amounts.
               8-Nausea and vomiting.
               9-Fever and chills if an infection is present
                  '''),
            ElevatedButton(
              child: Text('Click Here'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KidneyStones()),
                );
              },
            ),
          ]),
        )));
  }
}
