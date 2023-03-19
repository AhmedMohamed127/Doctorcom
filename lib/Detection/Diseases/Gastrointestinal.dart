import 'package:DoctorCom/Detection/main.dart';
import 'package:flutter/material.dart';
import 'Gastrointestinal diseases/Appendix.dart';

class Gastrointestinal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Screen'),
        ),
        body: Center(
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Press on the place of pain and then quickly remove your hand in case the pain increases, press the button'),
            ElevatedButton(
              child: Text('Click Here'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Belly()),
                );
              },
            ),
            Text('Raise the right Leg, in case the pain increases, click here'),
            ElevatedButton(
              child: Text('Click Here'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Appendicitis()),
                );
              },
            ),
          ]),
        ));
  }
}
