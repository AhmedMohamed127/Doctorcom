import 'package:DoctorCom/Detection/main.dart';
import 'package:flutter/material.dart';



class UlcerativeColitis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Appendix'),
        ),
        body: Center(
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('''Ulcerative colitis symptoms can vary, depending on the severity of inflammation and where it occurs. 
            
            Signs and symptoms may include:
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
              child: Text('booking General Practice Doctor'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Belly()),//مفروض يروح بقي لحجز دكتور باطني(نفجيت لدكتور باطني)
                );
              },
            ),
            ElevatedButton(
              child: Text('''
              Before starting your treatment plan, 
              your doctor will subject the patient to a range of tests that help make the right diagnosis, 
              such as blood tests.
              >> booking Medical analysis'''),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Belly()),//مفروض يروح بقي لصفحة مراكز التحليل
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