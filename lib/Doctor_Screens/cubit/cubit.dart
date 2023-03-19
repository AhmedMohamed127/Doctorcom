import 'package:DoctorCom/Doctor_Screens/cubit/state.dart';
import 'package:DoctorCom/network/SharedPre/SharedPre.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResrvationsDcotorCubit extends Cubit<ReservationDoctorStates> {
  ResrvationsDcotorCubit() : super(ReservationStateInitial());
  static ResrvationsDcotorCubit get(context) => BlocProvider.of(context);

  var Resrvations = [];
  var ResrvationsId = [];

  var authID=FirebaseAuth.instance.currentUser.uid;

showResrvations(){
  emit(ShowReservationStateLoading());
  FirebaseFirestore.instance.collection('Resrvations').get().then((value){
    emit(ShowReservationStateSuccess());
    print('$value');
    Resrvations = value.docs;
    for(var doc in value.docs ) {
      // if(doc['docId']=='${authID.toString()}'){
        Resrvations.add(doc.data());
      }

    // cartMeals=value.docs;
    for(var doc in value.docs ) {
      // if(doc['docId']==getDoctorId().toString()){
        ResrvationsId.add(doc.id);
      }
      // cartMealsId.add(doc.id);

    print('========$Resrvations');
  }).catchError((e){
    emit(ShowReservationStateError(e));
  });
}

}
