
import 'package:DoctorCom/screens212/doctors_selection/categories/area/cubit/states.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetDoctorByAreaCubit extends Cubit<ShowDoctorsByAreaStates> {
  GetDoctorByAreaCubit() : super(ShowDoctorsByAreaInitial());
  static GetDoctorByAreaCubit get(context) => BlocProvider.of(context);

  List cairoDoctors = [];
  List cairoDoctorsId = [];

  List gizaDoctors = [];
  List gizaDoctorsId = [];

  List minyaDoctors = [];
  List minyaDoctorsId = [];

  List AlexDoctors = [];
  List AlexDoctorsId = [];

  List QualubiaDoctors = [];
  List QualubiaDoctorsId = [];

  List HelwanDoctors = [];
  List HelwanDoctorsId = [];

  List SharqiaDoctors = [];
  List SharqiaDoctorsId = [];

  List MonufiaDoctors = [];
  List MonufiaDoctorsId = [];

  List FaiyumDoctors = [];
  List FaiyumDoctorsId = [];

  List AswanDoctors = [];
  List AswanDoctorsId = [];

  showCairoDoctors(){
    emit(ShowDoctorsByAreaLoading());
    FirebaseFirestore.instance.collection('users').get().then((value){


      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['area']=='Cairo'){
            cairoDoctors.add(doc.data());
          }
        }
      }

      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['area']=='Cairo'){
            cairoDoctorsId.add(doc.id);
          }
        }
      }

      emit(ShowDoctorsByAreaSuccess());

    }).catchError((e){

      emit(ShowDoctorsByAreaError(e));

    });
  }

  showGizaDoctors(){
    emit(ShowDoctorsByAreaLoading());
    FirebaseFirestore.instance.collection('users').get().then((value){


      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['area']=='Giza'){
            gizaDoctors.add(doc.data());
          }
        }
      }

      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['area']=='Giza'){
            gizaDoctorsId.add(doc.id);
          }
        }
      }

      emit(ShowDoctorsByAreaSuccess());

    }).catchError((e){

      emit(ShowDoctorsByAreaError(e));

    });
  }

  showMinyaDoctors(){
    emit(ShowDoctorsByAreaLoading());
    FirebaseFirestore.instance.collection('users').get().then((value){


      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['area']=='Minya'){
            minyaDoctors.add(doc.data());
          }
        }
      }

      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['area']=='Minya'){
            minyaDoctorsId.add(doc.id);
          }
        }
      }

      emit(ShowDoctorsByAreaSuccess());

    }).catchError((e){

      emit(ShowDoctorsByAreaError(e));

    });
  }

  showQualubiaDoctors(){
    emit(ShowDoctorsByAreaLoading());
    FirebaseFirestore.instance.collection('users').get().then((value){


      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['area']=='Qualubia'){
            QualubiaDoctors.add(doc.data());
          }
        }
      }

      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['area']=='Qualubia'){
            QualubiaDoctorsId.add(doc.id);
          }
        }
      }

      emit(ShowDoctorsByAreaSuccess());

    }).catchError((e){

      emit(ShowDoctorsByAreaError(e));

    });
  }

  showHelwanDoctors(){
    emit(ShowDoctorsByAreaLoading());
    FirebaseFirestore.instance.collection('users').get().then((value){


      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['area']=='Helwan'){
            HelwanDoctors.add(doc.data());
          }
        }
      }

      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['area']=='Helwan'){
            HelwanDoctorsId.add(doc.id);
          }
        }
      }

      emit(ShowDoctorsByAreaSuccess());

    }).catchError((e){

      emit(ShowDoctorsByAreaError(e));

    });
  }

  showSharqiaDoctors(){
    emit(ShowDoctorsByAreaLoading());
    FirebaseFirestore.instance.collection('users').get().then((value){


      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['area']=='Sharqia'){
            SharqiaDoctors.add(doc.data());
          }
        }
      }

      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['area']=='Sharqia'){
            SharqiaDoctorsId.add(doc.id);
          }
        }
      }

      emit(ShowDoctorsByAreaSuccess());

    }).catchError((e){

      emit(ShowDoctorsByAreaError(e));

    });
  }

  showAlexandriaDoctors(){
    emit(ShowDoctorsByAreaLoading());
    FirebaseFirestore.instance.collection('users').get().then((value){


      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['area']=='Alexandria'){
            AlexDoctors.add(doc.data());
          }
        }
      }

      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['area']=='Alexandria'){
            AlexDoctorsId.add(doc.id);
          }
        }
      }

      emit(ShowDoctorsByAreaSuccess());

    }).catchError((e){

      emit(ShowDoctorsByAreaError(e));

    });
  }

  showMonufiaDoctors(){
    emit(ShowDoctorsByAreaLoading());
    FirebaseFirestore.instance.collection('users').get().then((value){


      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['area']=='Monufia'){
            MonufiaDoctors.add(doc.data());
          }
        }
      }

      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['area']=='Monufia'){
            MonufiaDoctorsId.add(doc.id);
          }
        }
      }

      emit(ShowDoctorsByAreaSuccess());

    }).catchError((e){

      emit(ShowDoctorsByAreaError(e));

    });
  }

  showFaiyumDoctors(){
    emit(ShowDoctorsByAreaLoading());
    FirebaseFirestore.instance.collection('users').get().then((value){


      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['area']=='Faiyum'){
            FaiyumDoctors.add(doc.data());
          }
        }
      }

      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['area']=='Faiyum'){
            FaiyumDoctorsId.add(doc.id);
          }
        }
      }

      emit(ShowDoctorsByAreaSuccess());

    }).catchError((e){

      emit(ShowDoctorsByAreaError(e));

    });
  }

  showAswanDoctors(){
    emit(ShowDoctorsByAreaLoading());
    FirebaseFirestore.instance.collection('users').get().then((value){


      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['area']=='Aswan'){
            AswanDoctors.add(doc.data());
          }
        }
      }

      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['area']=='Aswan'){
            AswanDoctorsId.add(doc.id);
          }
        }
      }

      emit(ShowDoctorsByAreaSuccess());

    }).catchError((e){

      emit(ShowDoctorsByAreaError(e));

    });
  }

}