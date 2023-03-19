import 'package:DoctorCom/Detection/main.dart';
import 'package:flutter/material.dart';



class KidneyStones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Appendix'),
        ),
        body: Center(
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('''
            A kidney stone usually will not cause symptoms until it moves around within your kidney or passes into your ureters — the tubes connecting the kidneys and the bladder. 
            If it becomes lodged in the ureters, it may block the flow of urine and cause the kidney to swell and the ureter to spasm, which can be very painful. 
            At that point, 
            
            you may experience these signs and symptoms:
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
              child: Text('booking General Practice Doctor'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Belly()),//مفروض يروح بقي لحجز دكتور كلي(نفجيت لدكتور كلي)
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