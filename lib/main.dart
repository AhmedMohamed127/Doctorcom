import 'package:DoctorCom/DatePicker/DatePicker_Screen.dart';
import 'package:DoctorCom/Detection/main.dart';
import 'package:DoctorCom/Doctor_Screens/apoitment.dart';
import 'package:DoctorCom/Doctor_Screens/doctors.dart';
import 'package:DoctorCom/Screens/Confirmation.dart';
import 'package:DoctorCom/Screens/Pharmacy/Pharmacy.dart';
import 'package:DoctorCom/Screens/SignUp/cubit_patient/cubit.dart';
import 'package:DoctorCom/Screens/medReport.dart';
import 'package:DoctorCom/Screens/questionScreen.dart';
import 'package:DoctorCom/lib1/Screens/HomeScreen.dart';
import 'package:DoctorCom/lib1/Screens/signin.dart';
import 'package:DoctorCom/screens212/doctor_sign_up/cubit/cubit.dart';
import 'package:DoctorCom/screens212/doctor_sign_up/doctor_sign_up_screen.dart';
import 'package:DoctorCom/utils/shared_prefrance.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Blog/Screen/blog.dart';
import 'Screens/doctorak.dart';

import 'Screens/doctorakScreen.dart';
import 'constants/constants.dart';
import 'Screens/Recover/enterNewPass.dart';
import 'Screens/Recover/recover.dart';
import 'Screens/Recover/sendCode.dart';
import 'Screens/SignUp/signup_as_patient.dart';
import 'Screens/SignUp/signup_as_pharmacy.dart';
import 'Screens/Specialties.dart';
import 'Screens/ambulance.dart';
import 'Screens/blod.dart';
import 'Screens/homePage.dart';
import 'Screens/laboratory.dart';
import 'Screens/location.dart';
import 'Screens/mainHome.dart';
import 'Screens/sign_chose.dart';
import 'Screens/signin.dart';
import 'Screens/splashscreen.dart';
import 'lib1/Authenticate/CreateAccount.dart';
import 'lib1/Authenticate/LoginScree.dart';
import 'lib1/Screens/Chat_Screen.dart';
import 'lib1/Screens/register_screen.dart';
import 'lib1/Screens/test.dart';
import 'lib1/Screens/welcomeScreen.dart';
import 'lib1/m2.dart';
import 'lib1/page/MainPage.dart';
import 'network/SharedPre/SharedPre.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await initpref();
  await initprefs();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SignUpDoctorCubit(),
        ),

        BlocProvider(
          create: (context) => SignUpCubit(),
        ),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "DoctorCom",
        //default Background
        // home: Questions(),

        theme: ThemeData(
            primaryColor: Colors.blue,
            accentColor: Colors.blue[200],
            fontFamily: 'Cairo'
            //  canvasColor: Color(0xB4F7F6FF)
            ),


        // initialRoute: _auth.currentUser != null ? 'home' : 'welcome_screen',

// App Routs
        routes: <String, WidgetBuilder>{
          SPLASH_SCREEN: (BuildContext context) => SplashScreen(),
          SIGN_CHOSE: (BuildContext context) => SignChose(),
          SIGN_IN: (BuildContext context) => SignInPage(),
          RECOVER: (BuildContext context) => Recover(),
          SEND_CODE: (BuildContext context) => SendCode(),
          NEW_PASS: (BuildContext context) => NewPass(),
          PATIENT_SIGN_UP: (BuildContext context) => PatientSignUpScreen(),
          DOCTOR_SIGN_UP: (BuildContext context) => DoctorSignUpScreen(),
          PHARMACY_SIGN_UP: (BuildContext context) => PharmacySignUpScreen(),
          Home_Page: (BuildContext context) => HomePage(),
          MAIN_HOME: (BuildContext context) => MainHome(),
          AMBULANCE: (BuildContext context) => Ambulance(),
          BLOD: (BuildContext context) => BlodBank(),
          DOCTORS: (BuildContext context) => Doctors(),
          PHARMACY: (BuildContext context) => Pharmacy(),
          SPECIALTIES: (BuildContext context) => Specialties(),
          LOCATION: (BuildContext context) => Location(),
          DOCTORAK: (BuildContext context) => Doctorak(),
          MID_REPORT: (BuildContext context) => MedReport(),
          LABORATORY: (BuildContext context) => Laboratory(),
          LOCATION: (BuildContext context) => Location(),
          BLOG: (BuildContext context) => Blog(),
          DOCTORAK_SCREEN: (BuildContext context) => DoctorakScreen(),
          Wel: (BuildContext context) => WelcomeScreen(),
          CHAT:(BuildContext context) => HomeScreen(),
          Conf:(BuildContext context) => ConfirmationPage(),





      'welcome_screen': (context) => WelcomeScreen(),
          //'SignIn1': (context) => SignInScreen1(),
          'register_screen': (context) => RegisterScreen(),
          'Chat_screen': (context) => ChatScreen(),
          // 'Upload': (context) => ImageUpload(),
          'log': (context) => LoginScreen(),
          'register': (context) => CreateAccount(),
          'home': (context) => HomeScreen2(),
          'hope': (context) => MainPage(),
          'Abo OMo': (context) => Home(),
          'Abo OMo eshta8al': (context) => TEst(),

        },
        // initial Route Page
        //initialRoute: SIGN_IN,
          initialRoute: SPLASH_SCREEN,
      ),
    );
  }
}
