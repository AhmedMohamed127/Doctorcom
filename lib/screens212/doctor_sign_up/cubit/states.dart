import 'package:firebase_auth/firebase_auth.dart';

abstract class SignUpStates {}

class SignUpStateInitial extends SignUpStates {}

class SignUpDoctorStateLoading extends SignUpStates {}

class SignUpDoctorStateSuccess extends SignUpStates {
  UserCredential authRuslut ;
  SignUpDoctorStateSuccess(this.authRuslut);
}

class SignUpDoctorStateError extends SignUpStates
{
  final error;

  SignUpDoctorStateError(this.error);
}

class ChangeIndexDrop1 extends SignUpStates {}
class ChangeIndexDrop2 extends SignUpStates {}