import 'package:DoctorCom/Doctor_Screens/doctorScreen.dart';
import 'package:DoctorCom/Screens/homePage.dart';
import 'package:DoctorCom/screens212/doctor_sign_up/cubit/cubit.dart';
import 'package:DoctorCom/screens212/doctor_sign_up/cubit/states.dart';
import 'package:DoctorCom/screens212/doctors_selection/doctor_selection_screen.dart';
import 'package:DoctorCom/widgets/ZOzWidget.dart';
import 'package:DoctorCom/widgets/buildProgress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorSignUpScreen extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController doctorDegreeController = TextEditingController();
  TextEditingController LocationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp'),
        actions: [
         /* FlatButton(
              onPressed: () {
                navigateTo(context, DoctorSelectionScreen());
              },
              child: Text(
                'Doctors',
                style: TextStyle(color: Colors.white, fontSize: 28),
              ))*/
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocConsumer<SignUpDoctorCubit, SignUpStates>(
          listener: (context, state) {
            if(state is SignUpDoctorStateLoading){
              return buildProgress(
                  context: context,
                  text: "please Wait until creating an account.. "
              );
            }
            if (state is SignUpDoctorStateSuccess){
              showToast(
                  text: 'SignUp Successful', error: false);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            }
          },
          builder: (context, state) {
            return ListView(
              children: [
                Column(
                  children: [
                    Form(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          defaultTextBox(
                              controller: nameController,
                              type: TextInputType.text,
                              hint: 'FullName',
                              title: 'FullName',
                              isPassword: false,
                              icon: Icons.drive_file_rename_outline,
                              iconColor: Colors.grey),
                          SizedBox(
                            height: 20,
                          ),
                          defaultTextBox(
                              controller: emailController,
                              type: TextInputType.text,
                              hint: 'Email',
                              title: 'Email',
                              isPassword: false,
                              icon: Icons.drive_file_rename_outline,
                              iconColor: Colors.grey),
                          SizedBox(
                            height: 20,
                          ),
                          defaultTextBox(
                              controller: mobileController,
                              type: TextInputType.text,
                              hint: 'MobilePhone',
                              title: 'MobilePhone',
                              isPassword: false,
                              icon: Icons.drive_file_rename_outline,
                              iconColor: Colors.grey),
                          SizedBox(
                            height: 20,
                          ),
                          defaultTextBox(
                              controller: LocationController,
                              type: TextInputType.text,
                              hint: 'Your Location',
                              title: 'Your Location',
                              isPassword: false,
                              icon: Icons.location_city_outlined,
                              iconColor: Colors.grey),
                          SizedBox(
                            height: 20,
                          ),
                          defaultTextBox(
                              controller: passwordController,
                              type: TextInputType.text,
                              hint: 'password',
                              title: 'password',
                              isPassword: true,
                              icon: Icons.drive_file_rename_outline,
                              iconColor: Colors.grey),
                          SizedBox(
                            height: 20,
                          ),
                          defaultTextBox(
                              controller: doctorDegreeController,
                              type: TextInputType.text,
                              hint: 'doctor degree',
                              title: 'doctor degree',
                              isPassword: false,
                              icon: Icons.drive_file_rename_outline,
                              iconColor: Colors.grey),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Doctor Area'),
                        SizedBox(
                          width: 40,
                        ),
                        AreaDropDownList(),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Doctor Specialty'),
                        SizedBox(
                          width: 40,
                        ),
                        DropDownList(),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    defaultButton(
                      function: () {
                        String name = nameController.text;
                        String email = emailController.text;
                        String mobile = mobileController.text;
                        String password = passwordController.text;
                        String doctorDegree = doctorDegreeController.text;
                        if (name.isEmpty ||
                            email.isEmpty ||
                            mobile.isEmpty ||
                            password.isEmpty ||
                            doctorDegree.isEmpty) {
                          showToast(
                              text: 'please enter a valid data', error: false);
                          return;
                        }
                        else{
                          SignUpDoctorCubit.get(context).signUpDoctor(
                            email: email,
                            password: password,
                            name: name,
                            mobilePhone: mobile,
                            doctorDegree:doctorDegree,
                          );
                        }
                      },
                      text: "Sign Up",
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class DropDownList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpDoctorCubit, SignUpStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var dropValue = SignUpDoctorCubit.get(context).dropdownValue1;
        return DropdownButton<String>(
          focusColor: Colors.blue,
          elevation: 12,
          icon: Icon(
            Icons.arrow_drop_down_sharp,
            color: Colors.grey,
          ),
          hint: Text("Choose"),
          style: TextStyle(fontSize: 14, color: Colors.black),
          value: dropValue,
          onChanged: (String newValue) {
            SignUpDoctorCubit.get(context).changeValue1(newValue);
          },
          items: <String>[
            'Your Specialty',
            'Neurology',
            'Dentistry',
            'Audiology',
            'Cardiology',
            'GeneralPractice',
            'Naphrology',
            'PainManagement'
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        );
      },
    );
  }
}

class AreaDropDownList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpDoctorCubit, SignUpStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var dropValue = SignUpDoctorCubit.get(context).dropdownValue2;
        return DropdownButton<String>(
          focusColor: Colors.blue,
          elevation: 12,
          icon: Icon(
            Icons.arrow_drop_down_sharp,
            color: Colors.grey,
          ),
          hint: Text("Choose"),
          style: TextStyle(fontSize: 14, color: Colors.black),
          value: dropValue,
          onChanged: (String newValue) {
            SignUpDoctorCubit.get(context).changeValue2(newValue);
          },
          items: <String>[
            'Your Area',
            'Cairo',
            'Giza',
            'Minya',
            'Alexandria',
            'Aswan',
            'Faiyum',
            'Helwan',
            'Monufia',
            'Qualubia',
            'Sharqia'
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        );
      },
    );
  }
}
