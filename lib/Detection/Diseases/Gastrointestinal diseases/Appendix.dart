import 'package:DoctorCom/Detection/main.dart';
import 'package:flutter/material.dart';


class Appendicitis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Appendix'),
        ),
        body: Center(
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('''Signs and symptoms of appendicitis may include:
        1-Sudden pain that begins on the right side of the lower abdomen'
        2-Sudden pain that begins around your navel and often shifts to your lower right abdomen
        3-Pain that worsens if you cough, walk or make other jarring movements
        4-Nausea and vomiting
        5-Loss of appetite
        6-Low-grade fever that may worsen as the illness progresses
        7-Constipation or diarrhea
        8-Abdominal bloating
        9-Flatulence
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
              child: Text('X-ray booking'),
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