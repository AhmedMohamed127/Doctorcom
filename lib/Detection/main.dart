import 'package:flutter/material.dart';
import 'Diseases/Gastrointestinal.dart';
import 'Diseases/right upper quadrant/RUQ_Symptoms.dart';

class Belly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
        body: Center(
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('determine which part of belly feels wrong'),
            ElevatedButton(
              child: Text('right upper quadrant'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RUQSymptoms()),
                );
              },
            ),
            ElevatedButton(
              child: Text('left upper quadrant'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Gastrointestinal()),
                );
              },
            ),
            ElevatedButton(
              child: Text('lower right quadrant'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Gastrointestinal()),
                );
              },
            ),
            ElevatedButton(
              child: Text('left lower quadrant'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Gastrointestinal()),
                );
              },
            ),
            ElevatedButton(
              child: Text('Upper section (Epigastric)'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Gastrointestinal()),
                );
              },
            ),
            ElevatedButton(
              child: Text('The middle section is around the navel (Periumbilical)'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Gastrointestinal()),
                );
              },
            ),
            ElevatedButton(
              child: Text('lower section (suprapubic)'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Gastrointestinal()),
                );
              },
            ),
          ]),
        ));
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back'),
        ),
      ),
    );
  }
}
