import 'package:DoctorCom/constants/colors.dart';
import 'package:DoctorCom/constants/constants.dart';
import 'package:DoctorCom/model/questionsModel.dart';
import 'package:DoctorCom/widgets/alertDialog.dart';
import 'package:flutter/material.dart';

String strAppBarTitle = "Healthstation Foundation";

class Questions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //FAB
      floatingActionButton: bildFloatingActionButton(),

      body: Container(
        height: MediaQuery.of(context).size.height - 150,
        child: bildLisView(),
      ),
    );
  }

  Widget bildFloatingActionButton() {
    return Builder(
      builder: (ctx) => FloatingActionButton.extended(
        backgroundColor: b3,
        icon: Icon(Icons.add, color: w),
        label: Text(
          "Ask Question",
          style: TextStyle(color: w),
        ),
        onPressed: () {
          showDialog(
            context: ctx,
            builder: (BuildContext context) {
              return MyAlertDialog(
                  "You Need To SignIn First",
                  "Sign Up To Get Your Free",
                  Icons.chevron_right,
                  "SignIn/SignUp",
                  SIGN_CHOSE);
            },

            //   navigationPage(SIGN_CHOSE)
            //   navigationPage(MID_REPORT)
          );
        },
      ),
    );
  }

  Widget bildLisView() {
    return ListView.builder(
      itemCount: QuestionsModel.dummyData.length,
      itemBuilder: (context, index) {
        QuestionsModel _model = QuestionsModel.dummyData[index];
        return Column(
          children: <Widget>[
            Divider(
              height: 12.0,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 24.0,
                backgroundImage: NetworkImage(_model.avatarUrl),
              ),
              title: Row(
                children: <Widget>[
                  Text(_model.name),
                  SizedBox(
                    width: 16.0,
                  ),
                  Text(
                    _model.datetime,
                    style: TextStyle(fontSize: 12.0),
                  ),
                ],
              ),
              subtitle: Text(
                _model.question,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 14.0,
              ),
            ),
          ],
        );
      },
    );
  }
}
