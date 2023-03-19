// import 'package:flutter/material.dart';
// import 'package:hegazy_ahmed_app/utitlitis/constans.dart';
// import 'package:hegazy_ahmed_app/widgets/widgets.dart';
//
// class DoctorSignUpScreen1 extends StatefulWidget {
// @override
// _DoctorSignUpScreenState1 createState() => _DoctorSignUpScreenState1();
// }
//
// class _DoctorSignUpScreenState1 extends State<DoctorSignUpScreen1> {
//   bool checkBoxValue = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:  Expanded(
//         child: SingleChildScrollView(
//           child: Column(
//             children: <Widget>[
//               form(),
//               acceptTermsTextRow(),
//               button(),
//               infoTextRow(),
//               socialIconsRow(),
//               signInTextRow(),
//             ],
//           ),
//         ),
//       ),
//     ) ;
//   }
//   Widget form() {
//     return Container(
//       child: Form(
//         child: Column(
//           children: <Widget>[
//             firstNameTextFormField(),
//             SizedBox(height: 20),
//             emailTextFormField(),
//             SizedBox(height: 20),
//             phoneTextFormField(),
//             SizedBox(height: 20),
//             passwordTextFormField(),
//             SizedBox(height: 20),
//             doctorsdegreeTextFormField(),
//             SizedBox(height: 20),
//             addressTextFormField(),
//             SizedBox(height: 20),
//           //  doctorsspecialty(),
//             SizedBox(height: 20),
//             doctorImage(),
//           ],
//         ),
//       ),
//     );
//   }
//
//   // Widget doctorsspecialty() {
//   //   return Row(
//   //     crossAxisAlignment: CrossAxisAlignment.baseline,
//   //     textBaseline: TextBaseline.alphabetic,
//   //     mainAxisAlignment: MainAxisAlignment.center,
//   //     children: <Widget>[
//   //       Row(children: [
//   //         Icon(Icons.notes,color: b3, ), SizedBox(
//   //           width: 5,
//   //         ),
//   //         Text(
//   //           "Doctor specialty",
//   //
//   //           style: TextStyle(
//   //             fontFamily: 'Cairo',
//   //             fontWeight: FontWeight.bold,
//   //             fontSize: 15,
//   //             color: Colors.grey[700],
//   //
//   //             // backgroundColor: Colors.grey[100],
//   //           ),
//   //         ),
//   //       ],),
//   //
//   //
//   //
//   //       SizedBox(
//   //         width: 15,
//   //       ),
//   //       DropDownValue()
//   //     ],
//   //   );
//   // }
//
//   List gender = ["Male", "Female", "Other"];
//
//   String _select;
//
//   Row addRadioButton(int btnValue, String title) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: <Widget>[
//         Radio(
//           activeColor: Theme.of(context).primaryColor,
//           value: gender[btnValue],
//           groupValue: _select,
//           onChanged: (value) {
//             setState(() {
//               print(value);
//               _select = value;
//             });
//           },
//         ),
//         Text(title)
//       ],
//     );
//   }
//   /* Row(
//
//                 children: <Widget>[
//
//                   Text("Gender",style: TextStyle(
//                                 fontFamily: 'Cairo',
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 20,
//                                 color: b3,
//                               ),),
//                   addRadioButton(0, 'Male'),
//                   addRadioButton(1, 'Female'),
//                   addRadioButton(2, 'Others'),
//                 ],
//               ),*/
//
//   Widget firstNameTextFormField() {
//     return CustomTextField(
//       keyboardType: TextInputType.text,
//       icon: Icons.person,
//       hint: "Full Name",
//     );
//   }
//
//   Widget ageTextFormField() {
//     return CustomTextField(
//       keyboardType: TextInputType.number,
//       icon: Icons.accessibility_new_sharp,
//       hint: "Age",
//     );
//   } //person_pin_circle
//
//   Widget emailTextFormField() {
//     return CustomTextField(
//       keyboardType: TextInputType.emailAddress,
//       icon: Icons.email,
//       hint: "Email ID",
//     );
//   }
//
//   Widget phoneTextFormField() {
//     return CustomTextField(
//       keyboardType: TextInputType.number,
//       icon: Icons.phone,
//       hint: "Mobile Number",
//     );
//   }
//
//   Widget addressTextFormField() {
//     return CustomTextField(
//       keyboardType: TextInputType.text,
//       icon: Icons.location_city,
//       hint: "Address",
//     );
//   }
//
//   Widget doctorsdegreeTextFormField() {
//     return CustomTextField(
//       keyboardType: TextInputType.text,
//       icon: Icons.assignment,
//       hint: "Doctor's degree",
//     );
//   }
//
//   Widget passwordTextFormField() {
//     return CustomTextField(
//       keyboardType: TextInputType.text,
//       obscureText: true,
//       icon: Icons.lock,
//       hint: "Password",
//     );
//   }
//
//   Widget doctorImage() {
//     return Container(
//       child:
//       Row(
//         // crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           FlatButton.icon(
//             icon: Icon(Icons.add_a_photo),
//             color: w,
//             shape: RoundedRectangleBorder(
//                 side: new BorderSide(color: Colors.grey[400]), //the outline color
//                 borderRadius: new BorderRadius.all(new Radius.circular(35))),
//             label: Text(
//               "Upload photo to verify your identity",
//               style: TextStyle(
//                 fontFamily: 'Cairo',
//                 fontWeight: FontWeight.bold,
//                 fontSize: 15,
//                 color: Colors.grey[600],
//               ),
//             ),
//             onPressed: () {},
//           ),
//         ],
//       ),
//
//
//     );
//   }
//
//   Widget acceptTermsTextRow() {
//     return Container(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Checkbox(
//               activeColor: b2,
//               value: checkBoxValue,
//               onChanged: (bool newValue) {
//                 setState(() {
//                   checkBoxValue = newValue;
//                 });
//               }),
//           Text(
//             "I accept all terms and conditions",
//             style: TextStyle(
//                 fontWeight: FontWeight.w400,
//           ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget button() {
//     return RaisedButton(
//       elevation: 3,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
//       onPressed: () {
//         print("Routing to your account");
//       },
//       textColor: Colors.white,
//       padding: EdgeInsets.all(0.0),
//       child: Container(
//         alignment: Alignment.center,
// //        height: _height / 20,
//       width: 100,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(20.0)),
//           gradient: LinearGradient(
//             colors: [b3, b1],
//           ),
//         ),
//         padding: const EdgeInsets.all(12.0),
//         child: Text(
//           'SIGN UP',
//         ),
//       ),
//     );
//   }
//
//   Widget infoTextRow() {
//     return Container(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text(
//             "Or create using social media",
//             style: TextStyle(
//                 fontWeight: FontWeight.w400,
//           ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget socialIconsRow() {
//     return Container(
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           CircleAvatar(
//             radius: 15,
//             backgroundImage: AssetImage("assets/images/googlelogo.png"),
//           ),
//           SizedBox(
//             width: 20,
//           ),
//           CircleAvatar(
//             radius: 15,
//             backgroundImage: AssetImage("assets/images/fblogo.jpg"),
//           ),
//           SizedBox(
//             width: 20,
//           ),
//           CircleAvatar(
//             radius: 15,
//             backgroundImage: AssetImage("assets/images/twitterlogo.jpg"),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget signInTextRow() {
//     return Container(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text(
//             "Already have an account?",
//             style: TextStyle(fontWeight: FontWeight.w400),
//           ),
//           SizedBox(
//             width: 5,
//           ),
//           GestureDetector(
//             onTap: () {
//             //  _navigationPage(SIGN_IN, "Routing to Sign up screen");
//             },
//             child: Text(
//               "Sign in",
//               style: TextStyle(
//                   fontWeight: FontWeight.w800, color: b2, fontSize: 19),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }