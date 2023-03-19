import 'package:DoctorCom/screens212/doctors_selection/categories/specialty/cubit/states.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetDoctorBySpecialtyCubit extends Cubit<ShowDoctorsBySpecialtyStates> {
  GetDoctorBySpecialtyCubit() : super(ShowDoctorsBySpecialtyInitial());
  static GetDoctorBySpecialtyCubit get(context) => BlocProvider.of(context);

  List audiologyDoctors = [];
  List audiologyDoctorsId = [];

  List dentistryDoctors = [];
  List dentistryDoctorsId = [];

  List neurologyDoctors = [];
  List neurologyDoctorsId = [];

  List cardiologyDoctors = [];
  List cardiologyDoctorsId = [];

  List nephrologyDoctors = [];
  List nephrologyDoctorsId = [];

  List generalPractice = [];
  List generalPracticeId = [];

  List painManagement = [];
  List painManagementId = [];



  showAudiologyDoctors(){
    emit(ShowDoctorsBySpecialtyLoading());
    FirebaseFirestore.instance.collection('users').get().then((value){


      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['doctorSpecialty']=='Audiology'){
            audiologyDoctors.add(doc.data());
          }
        }
      }

      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['doctorSpecialty']=='Audiology'){
            audiologyDoctorsId.add(doc.id);
          }
        }
      }

      emit(ShowDoctorsBySpecialtySuccess());

    }).catchError((e){

      emit(ShowDoctorsBySpecialtyError(e));

    });
  }

  showDentistryDoctors(){
    emit(ShowDoctorsBySpecialtyLoading());
    FirebaseFirestore.instance.collection('users').get().then((value){


      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['doctorSpecialty']=='Dentistry'){
            dentistryDoctors.add(doc.data());
          }
        }
      }

      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['doctorSpecialty']=='Dentistry'){
            dentistryDoctorsId.add(doc.id);
          }
        }
      }

      emit(ShowDoctorsBySpecialtySuccess());

    }).catchError((e){

      emit(ShowDoctorsBySpecialtyError(e));

    });
  }

  showNeurologyDoctors(){
    emit(ShowDoctorsBySpecialtyLoading());
    FirebaseFirestore.instance.collection('users').get().then((value){


      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['doctorSpecialty']=='Neurology'){
            neurologyDoctors.add(doc.data());
          }
        }
      }

      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['doctorSpecialty']=='Neurology'){
            neurologyDoctorsId.add(doc.id);
          }
        }
      }

      emit(ShowDoctorsBySpecialtySuccess());

    }).catchError((e){

      emit(ShowDoctorsBySpecialtyError(e));

    });
  }

  showpainManagementDoctors(){
    emit(ShowDoctorsBySpecialtyLoading());
    FirebaseFirestore.instance.collection('users').get().then((value){


      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['doctorSpecialty']=='PainManagement'){
            painManagement.add(doc.data());
          }
        }
      }

      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['doctorSpecialty']=='PainManagement'){
            painManagementId.add(doc.id);
          }
        }
      }

      emit(ShowDoctorsBySpecialtySuccess());

    }).catchError((e){

      emit(ShowDoctorsBySpecialtyError(e));

    });
  }

  showgeneralPracticeDoctors(){
    emit(ShowDoctorsBySpecialtyLoading());
    FirebaseFirestore.instance.collection('users').get().then((value){


      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['doctorSpecialty']=='GeneralPractice'){
            generalPractice.add(doc.data());
          }
        }
      }

      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['doctorSpecialty']=='GeneralPractice'){
            generalPracticeId.add(doc.id);
          }
        }
      }

      emit(ShowDoctorsBySpecialtySuccess());

    }).catchError((e){

      emit(ShowDoctorsBySpecialtyError(e));

    });
  }

  shownephrologyDoctors(){
    emit(ShowDoctorsBySpecialtyLoading());
    FirebaseFirestore.instance.collection('users').get().then((value){


      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['doctorSpecialty']=='Naphrology'){
            nephrologyDoctors.add(doc.data());
          }
        }
      }

      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['doctorSpecialty']=='Naphrology'){
            nephrologyDoctorsId.add(doc.id);
          }
        }
      }

      emit(ShowDoctorsBySpecialtySuccess());

    }).catchError((e){

      emit(ShowDoctorsBySpecialtyError(e));

    });
  }

  showcardiologyDoctors(){
    emit(ShowDoctorsBySpecialtyLoading());
    FirebaseFirestore.instance.collection('users').get().then((value){


      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['doctorSpecialty']=='Cardiology'){
            cardiologyDoctors.add(doc.data());
          }
        }
      }

      for(var doc in value.docs ) {
        if(doc['userType']=='Doctor'){
          if(doc['doctorSpecialty']=='Cardiology'){
            cardiologyDoctorsId.add(doc.id);
          }
        }
      }

      emit(ShowDoctorsBySpecialtySuccess());

    }).catchError((e){

      emit(ShowDoctorsBySpecialtyError(e));

    });
  }


}