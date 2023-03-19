import 'package:DoctorCom/DatePicker/Cubit/state.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResrvationsCubit extends Cubit<ReservationStates> {
  ResrvationsCubit() : super(ReservationStateInitial());
  static ResrvationsCubit get(context) => BlocProvider.of(context);

  var Resrvations = [];
  var ResrvationsId = [];

  makeResrvations({docName,docId,userId,date}){
    emit(ReservationStateLoading());
    FirebaseFirestore.instance.collection('Resrvations').add({
      'docName': '${docName.toString()}',
      'docId': '${docId.toString()}',
      'userId': '${userId.toString()}',
      'date': '${date.toString()}',
    }).then((value) async{
      emit(ReservationStateSuccess());
    }).catchError((e){
      emit(ReservationStateError(e.toString()));
    });
  }

  // showResrvations(){
  //   emit(ShowCartStateLoading());
  //   FirebaseFirestore.instance.collection('Cart').get().then((value){
  //     emit(ShowCartStateSuccess());
  //     print('$value');
  //     for(var doc in value.docs ) {
  //       if(doc['UserId']==getToken().toString()){
  //         cartMeals.add(doc.data());
  //       }
  //     }
  //     // cartMeals=value.docs;
  //     for(var doc in value.docs ) {
  //       if(doc['UserId']==getToken().toString()){
  //         cartMealsId.add(doc.id);
  //       }
  //       // cartMealsId.add(doc.id);
  //     }
  //     print('========$cartMealsId');
  //   }).catchError((e){
  //     emit(ShowCartStateError(e));
  //   });
  // }

}
