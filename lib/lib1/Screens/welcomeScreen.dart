import 'package:flutter/material.dart';

import '../components/MyButton.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  child: Image.asset('images/Picture1.png'),
                ),
                Text(
                  'Rec Chat',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
              ],
            ),
            SizedBox(height: 30,),
MyButton(color: Colors.yellow[900],
    title: "Sign In",
    onPressed: (){
  Navigator.pushNamed(context, 'log');
    },
),
            MyButton(color: Colors.indigo, title: "Register", onPressed: (){
              Navigator.pushNamed(context,  'register');

            },),
          ],
        ),
      ),
    );
  }
}
