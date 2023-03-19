import 'package:DoctorCom/Screens/SignUp/cubit_patient/state.dart';
import 'package:DoctorCom/Doctor_Screens/doctorScreen.dart';
import 'package:DoctorCom/Screens/homePage.dart';
import 'package:DoctorCom/Screens/login/cubit.dart';
import 'package:DoctorCom/Screens/login/states.dart';
import 'package:DoctorCom/widgets/ZOzWidget.dart';

import 'package:DoctorCom/widgets/customappbar.dart';
import 'package:flutter/material.dart';
import 'package:DoctorCom/constants/constants.dart';

import 'package:DoctorCom/constants/colors.dart';
import 'package:DoctorCom/widgets/custom_shape.dart';

import 'package:DoctorCom/widgets/responsive_ui.dart';
import 'package:DoctorCom/widgets/textformfield.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignInScreen(),
    );
  }
}

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  double _height;
  double _width;
  double _pixelRatio;
  bool _large;
  bool _medium;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _key = GlobalKey();

  void _navigationPage(String rout) {
    Navigator.pushReplacementNamed(context, rout);
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    _pixelRatio = MediaQuery.of(context).devicePixelRatio;
    _large = ResponsiveWidget.isScreenLarge(_width, _pixelRatio);
    _medium = ResponsiveWidget.isScreenMedium(_width, _pixelRatio);
    return Scaffold(
        body: BlocProvider(
          create: (context)=> LoginCubit(),
          child: BlocConsumer<LoginCubit,LoginStates>(
            listener: (context,state){
              if(state is LoginStatesSuccess){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              }
              if(state is LoginStatesError){
               showToast(text: '${state.error.toString()}', error: false);
              }
            },
            builder: (context,state){
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/background.png"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.linearToSrgbGamma()),
                ),
                child: Container(
                  height: _height,
                  width: _width,
                  padding: EdgeInsets.only(bottom: 5),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Opacity(opacity: 0.88, child: CustomAppBar4()),
                        clipShape(),
                        welcomeTextRow(),
                        signInTextRow(),
                        form(),
                        forgetPassTextRow(),
                        SizedBox(height: _height / 12),
                        ElevatedButton(
                        onPressed: () {
                          String Email = emailController.text;
                          String Pass = passwordController.text;
                          if (Email.isEmpty || Pass.isEmpty) {
                            showToast(text: 'Fields Empty', error: true);
                          }
                          else if (Email.isNotEmpty && Pass.isNotEmpty && Email == 'ahmedmo12799@gmail.com')
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DoctorScreen()),
                            );
                            print("Routing to Doctor account");
                          }
                          else if (Email.isNotEmpty || Pass.isNotEmpty && Email != 'ahmedmo12799@gmail.com' )
                          {
                            LoginCubit.get(context).login(
                              email: Email.toString(),
                              password: Pass.toString(),
                            );
                            print("Routing to Personal account");
                          }
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: _large ? _width / 4 : (_medium ? _width / 3.75 : _width / 3.5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            gradient: LinearGradient(
                              colors: [b3, b1],
                            ),
                          ),
                          padding: const EdgeInsets.all(12.0),
                          child: Text('SIGN IN',
                              style: TextStyle(fontSize: _large ? 14 : (_medium ? 12 : 10))),
                        ),
                      ),
                        signUpTextRow(),
                        infoTextRow(),
                        socialIconsRow(),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ));
  }

  Widget clipShape() {
    //double height = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        Opacity(
          opacity: 0.75,
          child: ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
              height: _large
                  ? _height / 8
                  : (_medium ? _height / 8 : _height / 6.5),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [b0, b3],
                ),
              ),
            ),
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: ClipPath(
            clipper: CustomShapeClipper2(),
            child: Container(
              height: _large
                  ? _height / 12
                  : (_medium ? _height / 11 : _height / 10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [b0, b3],
                ),
              ),
            ),
          ),
        ),
        Container(
          height: _height / 7,
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(
              top: _large
                  ? _height / 60
                  : (_medium ? _height / 200 : _height / 20)),
          child: Image.asset(
            'assets/images/login.png',
            height: _height / 5.5,
            width: _width / 2.5,
          ),
        ),
      ],
    );
  }

  Widget welcomeTextRow() {
    return Container(
      margin: EdgeInsets.only(left: _width / 20, top: _height / 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "DoctorCom",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: b2,
              fontWeight: FontWeight.bold,
              fontSize: _large ? 60 : (_medium ? 50 : 40),
            ),
          ),
        ],
      ),
    );
  }

  Widget signInTextRow() {
    return Container(
      margin: EdgeInsets.only(left: _width / 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Sign in to your account",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w200,
              fontSize: _large ? 20 : (_medium ? 17.5 : 15),
            ),
          ),
        ],
      ),
    );
  }

  Widget form() {
    return Container(
      margin: EdgeInsets.only(
          left: _width / 12.0, right: _width / 12.0, top: _height / 15.0),
      child: Form(
        key: _key,
        child: Column(
          children: <Widget>[
            emailTextFormField(),
            SizedBox(height: _height / 40.0),
            passwordTextFormField(),
          ],
        ),
      ),
    );
  }

  Widget emailTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.emailAddress,
      textEditingController: emailController,
      icon: Icons.email,
      hint: "Email Address",
    );
  }

  Widget passwordTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.visiblePassword,
      textEditingController: passwordController,
      icon: Icons.lock,
      obscureText: true,
      hint: "Password",
    );
  }

  Widget forgetPassTextRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Forgot your password?",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: _large ? 14 : (_medium ? 12 : 10)),
          ),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              _navigationPage(RECOVER);
              /*    Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Recover()),
              );*/
              print("Routing to Recover screen");
            },
            child: Text(
              "Recover",
              style: TextStyle(fontWeight: FontWeight.w600, color: b1),
            ),
          )
        ],
      ),
    );
  }

//////////////////////
  Widget button() {
    return ElevatedButton(
      onPressed: () {
        String Email = emailController.text;
        String Pass = passwordController.text;
        if (Email.isEmpty || Pass.isEmpty)
        {
          showToast(text: 'Fields Empty', error: true);
        }
        else if (Email.isNotEmpty && Pass.isNotEmpty && Email == 'ahmedmo12799@gmail.com')
        {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DoctorScreen()),
          );
          print("Routing to Doctor account");
        } else if (Email.isNotEmpty || Pass.isNotEmpty && Email != 'ahmedmo12799@gmail.com' )
        {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
          print("Routing to Personal account");
        }
      },
      child: Container(
        alignment: Alignment.center,
        width: _large ? _width / 4 : (_medium ? _width / 3.75 : _width / 3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          gradient: LinearGradient(
            colors: [b3, b1],
          ),
        ),
        padding: const EdgeInsets.all(12.0),
        child: Text('SIGN IN',
            style: TextStyle(fontSize: _large ? 14 : (_medium ? 12 : 10))),
      ),
    );
  }

  Widget signUpTextRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 120.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Don't have an account?",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: _large ? 14 : (_medium ? 12 : 10)),
          ),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              //////
              Navigator.of(context).pushNamed(SIGN_CHOSE);
              print("Routing to Sign up screen");
            },
            child: Text(
              "Sign up",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: b1,
                  fontSize: _large ? 19 : (_medium ? 17 : 15)),
            ),
          )
        ],
      ),
    );
  }

  Widget infoTextRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Or create using social media",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: _large ? 12 : (_medium ? 11 : 10)),
          ),
        ],
      ),
    );
  }

  Widget socialIconsRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 80.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("assets/images/googlelogo.png"),
          ),
          SizedBox(
            width: 20,
          ),
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("assets/images/fblogo.jpg"),
          ),
          SizedBox(
            width: 20,
          ),
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("assets/images/twitterlogo.jpg"),
          ),
        ],
      ),
    );
  }
}
