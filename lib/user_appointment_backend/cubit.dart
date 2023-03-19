
import 'package:DoctorCom/user_appointment_backend/states.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class AddOrderCubit extends Cubit<OrderStates> {

  AddOrderCubit() : super(OrderStateInitial());

  static AddOrderCubit get(context) => BlocProvider.of(context);

  addAppointment({Id,date,time,userName}) async {
    emit(OrderStateLoading());
    await FirebaseFirestore.instance.collection('appointment').add({
      'DoctorId': '${Id.toString()}',
      'date': '${date.toString()}',
      'time': '${time.toString()}',
      'UserName': '${userName.toString()}',
    }).then((value) async{
      emit(OrderStateSuccess());
      var id = value.id ;
      value.update({
        'docId': '${id.toString()}',
      });

    }).catchError((e){
      emit(OrderStateError(e.toString()));
    });
  }

  Rating (double rate){


  }
}

