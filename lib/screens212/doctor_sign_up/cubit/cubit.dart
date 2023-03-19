


import 'package:DoctorCom/network/SharedPre/SharedPre.dart';
import 'package:DoctorCom/screens212/doctor_sign_up/cubit/states.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpDoctorCubit extends Cubit<SignUpStates> {
  SignUpDoctorCubit() : super(SignUpStateInitial());

  static SignUpDoctorCubit get(context) => BlocProvider.of(context);

  String dropdownValue1 = 'Your Specialty';
  String dropdownValue2 = 'Your Area';
  String finalValue1 ;
  String finalValue2 ;

  changeValue1(newValue) {
    dropdownValue1 = newValue;
    finalValue1 = newValue ;
    emit(ChangeIndexDrop1());
  }

  changeValue2(newValue) {
    dropdownValue2 = newValue;
    finalValue2 = newValue ;
    emit(ChangeIndexDrop2());
  }

  signUpDoctor({email, password, name, mobilePhone,doctorDegree}) async {
    emit(SignUpDoctorStateLoading());
    final auth = FirebaseAuth.instance;
    try {
      UserCredential authResult;
      authResult = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await saveDoctorId(authResult.user.uid);
      await FirebaseFirestore.instance.collection('users').add({
        'name': '$name',
        'email': '${email.toString()}',
        'mobile': '${mobilePhone.toString()}',
        'password': '${password.toString()}',
        'area': '${finalValue2.toString()}',
        'degree': '${doctorDegree.toString()}',
        'doctorID': '${getDoctorId().toString()}',
        'userType': 'Doctor',
        'doctorSpecialty': '${finalValue1.toString()}',
      }).then((value) async {
        emit(SignUpDoctorStateSuccess(authResult));
      }).catchError((e) {
        emit(SignUpDoctorStateError(e.toString()));
      });
      print('${authResult.user}');
    } on FirebaseAuthException catch (e) {
      String message = "error";
      if (e.code == 'weak-password') {
        message = ('the password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        message = ('the account already exists for that email.');
      }
      emit(SignUpDoctorStateError(message.toString()));
    }
  }
}