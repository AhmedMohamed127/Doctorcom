import 'package:DoctorCom/Screens/SignUp/cubit_patient/cubit.dart';
import 'package:DoctorCom/Screens/SignUp/cubit_patient/state.dart';
import 'package:DoctorCom/Screens/homePage.dart';
import 'package:DoctorCom/utils/navigations.dart';
import 'package:DoctorCom/widgets/buildProgress.dart';
import 'package:flutter/material.dart';
import 'package:DoctorCom/widgets/customappbar.dart';
import 'package:DoctorCom/constants/constants.dart';
import 'package:DoctorCom/constants/colors.dart';
import 'package:DoctorCom/widgets/custom_shape.dart';
import 'package:DoctorCom/widgets/responsive_ui.dart';
import 'package:DoctorCom/widgets/textformfield.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PatientSignUpScreen extends StatefulWidget {
  @override
  _PatientSignUpScreenState createState() => _PatientSignUpScreenState();
}

class _PatientSignUpScreenState extends State<PatientSignUpScreen> {
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

  var emailController = TextEditingController();
  var passController = TextEditingController();
  var nameController = TextEditingController();
  var ageController = TextEditingController();
  var mobileController = TextEditingController();
  var addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    _pixelRatio = MediaQuery.of(context).devicePixelRatio;
    _large = ResponsiveWidget.isScreenLarge(_width, _pixelRatio);
    _medium = ResponsiveWidget.isScreenMedium(_width, _pixelRatio);
    return BlocConsumer<SignUpCubit,SignUpStates>(
      listener: (context,state){
        if (state is SignUpStateLoading) {
          print('SignUpStateLoading');
          return buildProgress(
              context: context,
              text: "please Wait until creating an account.. "
          );
        }
        if (state is SignUpStateSuccess) {
          Navigator.pop(context);
          print('SignUpStateSuccess');
         navigateAndFinish(context, HomeScreen());
        }
        if (state is SignUpStateError) {
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
        return  Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.linearToSrgbGamma()),
            ),
            child: Container(
              height: _height,
              width: _width,
              margin: EdgeInsets.only(bottom: 6),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Opacity(
                        opacity: 0.88, child: CustomAppBar("Patient SignUp Form")),
                    clipShape(),
                   // form(nameController,ageController,emailController,mobileController,passController,addressController),
                  CustomTextField(
                    keyboardType: TextInputType.text,
                    icon: Icons.person,
                    hint: "Full Name",
                    textEditingController: nameController,
                  ),
                  CustomTextField(
                    keyboardType: TextInputType.text,
                    icon: Icons.person,
                    hint: "Age",
                    textEditingController: ageController,
                  ),
                  CustomTextField(
                    keyboardType: TextInputType.text,
                    icon: Icons.person,
                    hint: "Email ID",
                    textEditingController: emailController,
                  ),
                  CustomTextField(
                    keyboardType: TextInputType.text,
                    icon: Icons.person,
                    hint: "Mobile Number",
                    textEditingController: mobileController,
                  ),
                  CustomTextField(
                    keyboardType: TextInputType.text,
                    icon: Icons.person,
                    hint: "Address",
                    textEditingController: addressController,
                  ),
                  CustomTextField(
                    keyboardType: TextInputType.text,
                    icon: Icons.person,
                    hint: "Password",
                    textEditingController: passController,
                  ),
                  acceptTermsTextRow(),
                    ElevatedButton(
                    onPressed:  (){
                      String name = nameController.text;
                      String email = emailController.text;
                      String mobile = mobileController.text;
                      String password = passController.text;
                      String address = addressController.text;
                      String age = ageController.text;
                      SignUpCubit.get(context).register(
                            name: name,
                            age: age,
                            email: email,
                            mobilePhone: mobile,
                            password: password,
                            address: address,
                            );
                            },
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
    );
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
      ],
    );
  }

  Widget form(name,age,email,mobile,password,address) {
    return Container(
      margin: EdgeInsets.only(
          left: _width / 20.0, right: _width / 20.0, top: _height / 90.0),
      child: Form(
        child: Column(
          children: <Widget>[
            firstNameTextFormField(name),
            SizedBox(height: _height / 120.0),
            ageTextFormField(age),
            SizedBox(height: _height / 120.0),
            emailTextFormField(email),
            SizedBox(height: _height / 120.0),
            phoneTextFormField(mobile),
            SizedBox(height: _height / 120.0),
            passwordTextFormField(password),
            SizedBox(height: _height / 120.0),
            addressTextFormField(address),

            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  /*shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.grey[400]), //the outline color
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(35))),*/
                  onPressed: () {},
                  child: Text(
                    "Gender",
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: b2,
                    ),
                  ),
                ),
                addRadioButton(0, 'Male'),
                addRadioButton(1, 'Female'),
                addRadioButton(2, 'Others'),
              ],
            ),
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
  Widget ageTextFormField(age) {
    return CustomTextField(
      keyboardType: TextInputType.number,
      icon: Icons.accessibility_new_sharp,
      hint: "Age",
      textEditingController: age,

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
  Widget phoneTextFormField(mobile) {
    return CustomTextField(
      keyboardType: TextInputType.number,
      icon: Icons.phone,
      hint: "Mobile Number",
      textEditingController: mobile,

    );
  }
  Widget addressTextFormField(address) {
    return CustomTextField(
      keyboardType: TextInputType.number,
      icon: Icons.location_city,
      hint: "Address",
      textEditingController: address,
    );
  }
  Widget passwordTextFormField(password) {
    return CustomTextField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      icon: Icons.lock,
      hint: "Password",
      textEditingController: password,
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
    return ElevatedButton(
      // elevation: 3,
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      // onPressed: function ,
      // textColor: Colors.white,
      // padding: EdgeInsets.all(0.0),
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



  List gender = ["Male", "Female", "Other"];

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
