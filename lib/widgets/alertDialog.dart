import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VoicePay extends StatefulWidget {
  @override
  _VoicePayState createState() => _VoicePayState();
}

void CustomLaunch(command) async {
  if (await canLaunch(command)) {
    await launch(command);
  } else {
    print('could not launch $command');
  }
}

class _VoicePayState extends State<VoicePay> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // backgroundColor: Colors.indigo[50],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      title: Text(
        'Emergency Service',
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25.0),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/images/listening.gif'),
          SizedBox(height: 7.0),
          Container(
            alignment: Alignment.center,
            height: 40.0,
            child: Text(
              'Tap on mic to VoicePay',
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.call),
                onPressed: () {
                  CustomLaunch('tel:123');
                },
              ),
              IconButton(
                icon: Icon(Icons.mic),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.message),
                onPressed: () {
                  CustomLaunch('sms:123');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyAlertDialog extends StatefulWidget {
  final String title;
  final String describtion;
  final IconData myIcon;
  final String myIconName;
  final String rout;

  const MyAlertDialog(
      this.title, this.describtion, this.myIcon, this.myIconName, this.rout);

  @override
  _MyAlertDialogState createState() =>
      _MyAlertDialogState(title, describtion, myIcon, myIconName, rout);
}

class _MyAlertDialogState extends State<MyAlertDialog> {
  final String title;
  final String describtion;
  final IconData myIcon;
  final String myIconName;
  final String rout;

  _MyAlertDialogState(
      this.title, this.describtion, this.myIcon, this.myIconName, this.rout);

  void _navigationPage(String rout) {
    Navigator.pushReplacementNamed(context, rout);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25.0),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/images/listening.gif'),
          SizedBox(height: 10.0),
          Container(
            alignment: Alignment.center,
            height: 45.0,
            child: Text(
              describtion,
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 30.0),
          SizedBox(width: 2),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InkWell(
                onTap: () => _navigationPage(rout),
                child: Row(
                  children: [
                    Text(
                      myIconName,
                      style: TextStyle(
                          fontFamily: 'Cairo', fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
              InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: Row(
                  children: [
                    Text(
                      "Close",
                      style: TextStyle(
                          fontFamily: 'Cairo', fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
