import 'package:DoctorCom/Screens/login/states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginStatesInitial());
  static LoginCubit get(context) => BlocProvider.of(context);
  Future login({email, password}) async {
    emit(LoginStatesLoading());
    final auth = FirebaseAuth.instance;
    try {
      UserCredential authReslut;
      authReslut = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(LoginStatesSuccess(authReslut.user.uid));
      print('${authReslut.user}');
    } on FirebaseAuthException catch (e) {
      String message = "error";
      if (e.code == 'user-not-found') {
        message = ('no user found for that email.');
      } else if (e.code == 'wrong-password') {
        message = ('Wrong password provided for that user.');
      }
      emit(LoginStatesError(message.toString()));
    }
  }

}