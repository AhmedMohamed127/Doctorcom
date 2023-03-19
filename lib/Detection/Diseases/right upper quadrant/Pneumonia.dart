import 'package:DoctorCom/Detection/main.dart';
import 'package:flutter/material.dart';



class Pneumonia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('pneumonia'),
        ),
        body: Center(
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('''The signs and symptoms of pneumonia vary from mild to severe, 
            depending on factors such as the type of germ causing the infection, and your age and overall health. 
            Mild signs and symptoms often are similar to those of a cold or flu, but they last longer.

              Signs and symptoms of pneumonia may include:
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
              child: Text('''
              See your doctor if you have difficulty breathing, chest pain, 
              persistent fever of 102 F (39 C) or higher, or persistent cough, 
              especially if you're coughing up pus.
              
              It's especially important that people in these high-risk groups see a doctor:
               1-Adults older than age 65
               2-Children younger than age 2 with signs and symptoms
               3-People with an underlying health condition or weakened immune system
               4-People receiving chemotherapy or taking medication that suppresses the immune system
                         booking General Practice Doctor'''),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Belly()),//مفروض يروح بقي لحجز دكتور صدر(نفجيت لدكتور صدر)
                );
              },
            ),
            ElevatedButton(
              child: Text('''
              Before starting your treatment plan, 
              your doctor will subject the patient to a range of tests that help make the right diagnosis, 
              such as X-ray,ct scansand hepatic bile imaging.
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