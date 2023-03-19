import 'package:DoctorCom/DatePicker/DatePicker_Screen.dart';
import 'package:DoctorCom/screens212/doctors_selection/categories/specialty/cubit/cubit.dart';
import 'package:DoctorCom/screens212/doctors_selection/categories/specialty/cubit/states.dart';
import 'package:DoctorCom/utils/navigations.dart';
import 'package:DoctorCom/widgets/shape.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DentistryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (context)=> GetDoctorBySpecialtyCubit()..showDentistryDoctors(),
        child: BlocConsumer<GetDoctorBySpecialtyCubit,ShowDoctorsBySpecialtyStates>(
          listener: (context,state){},
          builder: (context,state){
            List doctors = GetDoctorBySpecialtyCubit.get(context).dentistryDoctors;
            List doctorsId = GetDoctorBySpecialtyCubit.get(context).dentistryDoctorsId;
            return Padding(
              padding: const EdgeInsets.all(1.0),

              child: ListView.separated(
                itemBuilder: (context,index) =>
                    Shape(
                      name: '${doctors[index]['name']}',
                      email:'${doctors[index]['email']}',
                      imageurl:
                      'http://i2.wp.com/moneynation.com/wp-content/uploads/2016/04/Doctor-Money-Women-vs-Men.jpg',
                      title:'${doctors[index]['area']}',
                      specialization:'specialized in ${doctors[index]['doctorSpecialty']}',
                      fees:160,
                      bio:'${doctors[index]['degree']}',
                      onTap: () {
                        navigateTo(context, DatePick_Screen(
                          doctorDetails: doctors[index],
                        ));

                      },
                    ),

                separatorBuilder: (context,index)=> SizedBox(height: 20,),
                itemCount: doctors.length,
              ),
            );
          },

        ),
      ),
    );
  }
}
