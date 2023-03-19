
import 'package:DoctorCom/lib1/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

import '../../Screens/homePage.dart';
import '../../constants/colors.dart';
import '../../widgets/ZOzWidget.dart';
import 'CreateAccount.dart';
import 'Methods.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(

      backgroundColor: Colors.white,
      body: isLoading
          ? Center(
              child: Container(
                height: size.height / 20,
                width: size.height / 20,
                child: CircularProgressIndicator(),
              ),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height / 20,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: size.width / 0.5,
                    child: IconButton(
                        icon: Icon(Icons.arrow_back_ios), onPressed: () {
                      Navigator.pop(context);

                    }),
                  ),
                  SizedBox(
                    height: size.height / 50,
                  ),
                  Container(
                    width: size.width / 1.1,
                    child: Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 1.1,
                    child: Text(
                      "Sign In to Contiue!",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                    height: 180,
                    child: Image.asset('assets/images/ambulance.png'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: size.width,
                    alignment: Alignment.center,
                    child: field(size, "Enter Your Email", Icons.account_box, _email),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Container(
                      width: size.width,
                      alignment: Alignment.center,
                      child: field(size, "Enter Your password", Icons.lock, _password),
                    ),
                  ),
                  SizedBox(
                    height: size.height / 20,
                  ),
                  customButton(size),
                  SizedBox(
                    height: size.height / 40,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => CreateAccount())),
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            ),
    );
  }

  Widget customButton(Size size) {
    return GestureDetector(
      onTap: () {
        if (_email.text.isNotEmpty && _password.text.isNotEmpty) {
          setState(() {
            isLoading = true;
          });

          logIn(_email.text, _password.text).then((user) {
            if (user != null) {
              print("Login Sucessfull");
              setState(() {
                isLoading = false;
              });
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => HomeScreen2()));
            } else {
              showToast(text: 'No User For This Email', error: true);
              print("Login Failed");
              setState(() {
                isLoading = false;
              });
            }
          });
        }
        else if(_email.text.isEmpty){
          showToast(text: 'Email is Empty', error: true);

        }
        else if(_password.text.isEmpty){
          showToast(text: 'Password is Empty', error: true);

        }
        else {
          showToast(text: 'Fields Empty', error: true);
        }
      },
      child: Container(
          height: size.height / 18,
          width: size.width / 1.2,
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.0)),
            gradient: LinearGradient(
              colors: [ora, or],
            ),          ),
          alignment: Alignment.center,
          child: Text(
            "Sign In",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }

  Widget field(
      Size size, String hintText, IconData icon, TextEditingController cont) {
    return Container(
      height: size.height / 14,
      width: size.width / 1.1,
      child: TextFormField(
        cursorColor: b2,
        textAlign: TextAlign.center,
        keyboardType:TextInputType.emailAddress ,
        controller: cont,
        decoration: InputDecoration(
          prefixIcon: Icon(icon,color: ora, size: 20),
          hintText: hintText,
          hintStyle: TextStyle(color: b2),
          contentPadding:
          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide.none
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.deepOrange,
              width: 1,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
              width: 2,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
