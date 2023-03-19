/*import 'package:DoctorCom/constants/constants.dart';
import 'package:DoctorCom/screens212/doctor_sign_up/cubit/cubit.dart';
import 'package:DoctorCom/screens212/doctor_sign_up/cubit/states.dart';
import 'package:DoctorCom/widgets/ZOzWidget.dart';
import 'package:DoctorCom/widgets/buildProgress.dart';
import 'package:DoctorCom/widgets/customappbar.dart';
import 'package:DoctorCom/widgets/dropdownValue.dart';
import 'package:flutter/material.dart';
import 'package:DoctorCom/constants/colors.dart';
import 'package:DoctorCom/widgets/custom_shape.dart';
import 'package:DoctorCom/widgets/responsive_ui.dart';
import 'package:DoctorCom/widgets/textformfield.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorSignUpScreenOld extends StatefulWidget {
  @override
  _DoctorSignUpScreenOldState createState() => _DoctorSignUpScreenOldState();
}

class _DoctorSignUpScreenOldState extends State<DoctorSignUpScreenOld> {
  bool checkBoxValue = false;
  double _height;
  double _width;
  double _pixelRatio;
  bool _large;
  bool _medium;
  void navigationPage(String rout, String consolMessage) {
    Navigator.of(context).pushNamed(rout);
  }

  void _navigationPage(String rout, String consolMessage) {
    Navigator.pushReplacementNamed(context, rout);
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController doctorDegreeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    _pixelRatio = MediaQuery.of(context).devicePixelRatio;
    _large = ResponsiveWidget.isScreenLarge(_width, _pixelRatio);
    _medium = ResponsiveWidget.isScreenMedium(_width, _pixelRatio);

    return BlocProvider(
      create: (context)=> SignUpDoctorCubit(),
      child: BlocConsumer<SignUpDoctorCubit,SignUpStates>(
        listener: (context,state){
          if (state is SignUpDoctorStateLoading) {
            print('SignUpStateLoading');
            return buildProgress(
                context: context,
                text: "please Wait until creating an account.. "
            );
          }
          if (state is SignUpDoctorStateSuccess) {
            Navigator.pop(context);
            print('SignUpStateSuccess');
            // return navigateAndFinish(
            // context,
            //    LoginScreen(
            //    Email: emailController.text,
            //  Pass: passController.text,
            // authResult:state.authRuslut,
            // ),
            /// );
          }
          if (state is SignUpDoctorStateError) {
            print('SignUpStateError');
            Navigator.pop(context);
            return buildProgress(
              context: context,
              text: '${state.error.toString()}',
              error: true ,
            );
          }
        },
        builder: (context,state){
          return Scaffold(
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.linearToSrgbGamma()
                ),
              ),
              child:
              Container(
                height: _height,
                width: _width,
                margin: EdgeInsets.only(bottom: 6),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Opacity(
                          opacity: 0.88, child: CustomAppBar("Doctor SignUp Form")),
                      clipShape(),
                      form(nameController,doctorDegreeController,emailController,mobileController,passController,addressController,doctorSpecialty),
                      acceptTermsTextRow(),
                      button(
                        function: () {
                          String name= nameController.text ;
                          String email = emailController.text;
                          String mobile= mobileController.text ;
                          String password = passwordController.text;
                          String doctorDegree= doctorDegreeController.text ;
                          if(name.isEmpty|| email.isEmpty|| mobile.isEmpty|| password.isEmpty|| doctorDegree.isEmpty)
                          {
                            showToast(text: 'please enter a valid data', error: false );
                            return ;
                          }
                          SignUpDoctorCubit.get(context).signUpDoctor(
                            email: email,
                            password: password,
                            name: name,
                            mobilePhone: mobile,
                          );
                        },
                      ),
                      infoTextRow(),
                      socialIconsRow(),
                      signInTextRow(),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    ) ;
  }

  Widget clipShape() {
    return Stack(
      children: <Widget>[
        Opacity(
          opacity: 0.75,
          child: ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
              height: _large
                  ? _height / 10
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
                  ? _height / 14
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
          height: _height / 10,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  spreadRadius: 0.0,
                  color: Colors.black26,
                  offset: Offset(1.0, 10.0),
                  blurRadius: 20.0),
            ],
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: GestureDetector(
              onTap: () {
                print('Adding photo');
              },
              child: Icon(
                Icons.add_a_photo,
                size: _large ? 40 : (_medium ? 33 : 31),
                color: litb,
              )),
        ),
//        Positioned(
//          top: _height/8,
//          left: _width/1.75,
//          child: Container(
//            alignment: Alignment.center,
//            height: _height/23,
//            padding: EdgeInsets.all(5),
//            decoration: BoxDecoration(
//              shape: BoxShape.circle,
//              color:  Colors.orange[100],
//            ),
//            child: GestureDetector(
//                onTap: (){
//                  print('Adding photo');
//                },
//                child: Icon(Icons.add_a_photo, size: _large? 22: (_medium? 15: 13),)),
//          ),
//        ),
      ],
    );
  }

  Widget form(name,email,mobile,password,doctorDegree,address,doctorSpecialty) {
    return Container(
      margin: EdgeInsets.only(
          left: _width / 20.0, right: _width / 20.0, top: _height / 90.0),
      child: Form(
        child: Column(
          children: <Widget>[
            firstNameTextFormField(name),
            SizedBox(height: _height / 120.0),
            emailTextFormField(email),
            SizedBox(height: _height / 120.0),
            phoneTextFormField(mobile),
            SizedBox(height: _height / 120.0),
            passwordTextFormField(password),
            SizedBox(height: _height / 120.0),
            doctorsdegreeTextFormField(doctorDegree),
            SizedBox(height: _height / 120.0),
            addressTextFormField(address),
            SizedBox(height: _height / 120.0),
            doctorsspecialty(doctorSpecialty),
            SizedBox(height: _height / 120.0),
            doctorImage(),
          ],
        ),
      ),
    );
  }
  Widget firstNameTextFormField(name) {
    return CustomTextField(
      keyboardType: TextInputType.text,
      icon: Icons.person,
      hint: "Full Name",
      textEditingController: name,
    );
  }
  Widget ageTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.number,
      icon: Icons.accessibility_new_sharp,
      hint: "Age",

    );
  } //person_pin_circle
  Widget emailTextFormField(email) {
    return CustomTextField(
      keyboardType: TextInputType.emailAddress,
      icon: Icons.email,
      hint: "Email ID",
      textEditingController: email,

    );
  }
  Widget phoneTextFormField(phone) {
    return CustomTextField(
      keyboardType: TextInputType.number,
      icon: Icons.phone,
      hint: "Mobile Number",
      textEditingController: phone,

    );
  }
  Widget addressTextFormField(address) {
    return CustomTextField(
      keyboardType: TextInputType.text,
      icon: Icons.location_city,
      hint: "Address",
      textEditingController: address,

    );
  }
  Widget doctorsdegreeTextFormField(doctorDegree) {
    return CustomTextField(
      keyboardType: TextInputType.text,
      icon: Icons.assignment,
      hint: "Doctor's degree",
      textEditingController: doctorDegree,

    );
  }
  Widget passwordTextFormField(password) {
    return CustomTextField(
      keyboardType: TextInputType.text,
      obscureText: true,
      icon: Icons.lock,
      hint: "Password",
      textEditingController: password,

    );
  }
  Widget doctorsspecialty(doctorSpecialty) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
            Row(children: [
              Icon(Icons.notes,color: b3, ), SizedBox(
          width: 5,
        ),
              Text(
            "Doctor specialty",

            style: TextStyle(
             fontFamily: 'Cairo',
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.grey[700],

             // backgroundColor: Colors.grey[100],
            ),
          ),
            ],),



        SizedBox(
          width: 15,
        ),
        DropDownValue(doctorSpecialty)
      ],
    );
  }

  List gender = ["Male", "Female", "Other"]; // aeh da aslan?????????/

  String _select;

  Row addRadioButton(int btnValue, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          activeColor: Theme.of(context).primaryColor,
          value: gender[btnValue],
          groupValue: _select,
          onChanged: (value) {
            setState(() {
              print(value);
              _select = value;
            });
          },
        ),
        Text(title)
      ],
    );
  }
  /* Row(

                children: <Widget>[

                  Text("Gender",style: TextStyle(
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: b3,
                              ),),
                  addRadioButton(0, 'Male'),
                  addRadioButton(1, 'Female'),
                  addRadioButton(2, 'Others'),
                ],
              ),*/

  Widget doctorImage() {
    return Container(
      child:
        Row(
         // crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.add_a_photo),
              color: w,
              shape: RoundedRectangleBorder(
              side: new BorderSide(color: Colors.grey[400]), //the outline color
              borderRadius: new BorderRadius.all(new Radius.circular(35))),
              label: Text(
                "Upload photo to verify your identity",
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey[600],
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),


    );
  }

  Widget acceptTermsTextRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 400.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(
              activeColor: b2,
              value: checkBoxValue,
              onChanged: (bool newValue) {
                setState(() {
                  checkBoxValue = newValue;
                });
              }),
          Text(
            "I accept all terms and conditions",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: _large ? 12 : (_medium ? 11 : 10)),
          ),
        ],
      ),
    );
  }

  Widget button({Function function}) {
    return RaisedButton(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      onPressed: function ,
      textColor: Colors.white,
      padding: EdgeInsets.all(0.0),
      child: Container(
        alignment: Alignment.center,
//        height: _height / 20,
        width: _large ? _width / 4 : (_medium ? _width / 3.75 : _width / 3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          gradient: LinearGradient(
            colors: [b3, b1],
          ),
        ),
        padding: const EdgeInsets.all(12.0),
        child: Text(
          'SIGN UP',
          style: TextStyle(fontSize: _large ? 14 : (_medium ? 12 : 10)),
        ),
      ),
    );
  }

  Widget infoTextRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 75.0),
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

  Widget signInTextRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Already have an account?",
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              _navigationPage(SIGN_IN, "Routing to Sign up screen");
            },
            child: Text(
              "Sign in",
              style: TextStyle(
                  fontWeight: FontWeight.w800, color: b2, fontSize: 19),
            ),
          )
        ],
      ),
    );
  }
}
*/