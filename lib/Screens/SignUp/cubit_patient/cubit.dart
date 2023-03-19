

import 'package:DoctorCom/Screens/SignUp/cubit_patient/state.dart';
import 'package:DoctorCom/utils/shared_prefrance.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpStates> {
  SignUpCubit() : super(SignUpStateInitial());
  static SignUpCubit get(context) => BlocProvider.of(context);
 Future register({ email, password, name, age, mobilePhone, address}) async {
    emit(SignUpStateLoading());
    final auth = FirebaseAuth.instance;
    try {
      UserCredential authReslut;
      authReslut = await auth.createUserWithEmailAndPassword(
        email: email.toString(),
        password: password.toString(),
      );
       await saveToken(authReslut.user.uid).then((value) async{
         await FirebaseFirestore.instance.collection('users').add({
           'email': '${email.toString()}',
           'password': '${password.toString()}',
           'age': '${age.toString()}',
           'mobile': '${mobilePhone.toString()}',
           'address': '${address.toString()}',
           'userID': '${getToken().toString()}',
           'userType':'Patient'
         }).then((value) async {
           emit(SignUpStateSuccess(authReslut));
         }).catchError((e) {
           emit(SignUpStateError(e.toString()));
         });
       });
      emit(SignUpStateSuccess(authReslut));
      print('${authReslut.user}');
    } on FirebaseAuthException catch (e) {
      String message = "error";
      if (e.code == 'weak-password') {
        message = ('the password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        message = ('the account already exists for that email.');
      }
      emit(SignUpStateError(message.toString()));
    }
  }

}