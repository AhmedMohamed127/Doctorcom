import 'package:DoctorCom/DatePicker/Cubit/cubit.dart';
import 'package:DoctorCom/DatePicker/Cubit/state.dart';
import 'package:DoctorCom/utils/shared_prefrance.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DatePick_Screen extends StatefulWidget {
  var doctorDetails;
  DatePick_Screen({this.doctorDetails});
  @override
  _DatePickState createState() => _DatePickState(doctorDetails);
}

class _DatePickState extends State<DatePick_Screen> {
  DateTime _dateTime;
  var doctorDetails;
  _DatePickState(this.doctorDetails);
  final auth = FirebaseAuth.instance;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (context)=> ResrvationsCubit(),
        child: BlocConsumer<ResrvationsCubit,ReservationStates>(
          listener: (context,state){},
          builder: (context,state){
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(_dateTime == null
                      ? 'Nothing has been picked yet'
                      : _dateTime.toString()),
                  FloatingActionButton(
                    child: Text('Pick a Date'),
                    onPressed: () {
                      showDatePicker(
                          context: context,
                          initialDate:
                          _dateTime == null ? DateTime.now() : _dateTime,
                          firstDate: DateTime(2001),
                          lastDate: DateTime(2022))
                          .then((date) {
                        setState(() {
                          _dateTime = date;
                        });
                      });
                    },
                  ),
                  SizedBox(height: 60,),

                  FloatingActionButton(
                      child: Text('Send Requst to doctor'),
                      onPressed: () {
                        String docName = doctorDetails['name'];
                        String docId = doctorDetails['doctorID'];
                        String date = '${_dateTime.toString()}';
                        String uerId = auth.currentUser.uid;
                        ResrvationsCubit.get(context).makeResrvations(
                            docName: docName.toString(),
                          docId: docId.toString(),
                          userId: uerId.toString(),
                          date: date.toString(),
                        );
                      }),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
