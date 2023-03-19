import 'package:DoctorCom/Detection/main.dart';
import 'package:flutter/material.dart';


class HepatitisB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Appendix'),
        ),
        body: Center(
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('''Signs and symptoms of hepatitis B range from mild to severe. 
            They usually appear about one to four months after you've been infected, 
            although you could see them as early as two weeks post-infection. 
            Some people, usually young children, may not have any symptoms.

            Hepatitis B signs and symptoms may include:

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
              child: Text('''
              If you know you've been exposed to hepatitis B, contact your doctor immediately.
              A preventive treatment may reduce your risk of infection if you receive the treatment within 24 hours of exposure to the virus.
              booking General Practice Doctor'''),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Belly()),//مفروض يروح بقي لحجز دكتور كبد(نفجيت لدكتور كبد)
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