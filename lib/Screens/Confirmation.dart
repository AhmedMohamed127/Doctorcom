
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Re Enter Your Mail to Start Chatting /n'
              'The Next Page is Private so that u need to have the which u will start chat with'),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, 'log');
          }, child:Text('Start Cahtting'))
        ],
      ),
    );
  }
}
