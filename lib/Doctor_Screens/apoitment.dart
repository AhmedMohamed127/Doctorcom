

import 'package:DoctorCom/Doctor_Screens/cubit/cubit.dart';
import 'package:DoctorCom/Doctor_Screens/cubit/state.dart';
import 'package:DoctorCom/components/appointment_card.dart';
import 'package:DoctorCom/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'appointment_request_page.dart';

class Apoitment extends StatefulWidget {
  @override
  _ApoitmentState createState() => _ApoitmentState();
}

class _ApoitmentState extends State<Apoitment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => ResrvationsDcotorCubit()..showResrvations(),
        child: BlocConsumer<ResrvationsDcotorCubit,ReservationDoctorStates>(
          listener: (context,state){},
          builder: (context,state){
            List reservations = ResrvationsDcotorCubit.get(context).Resrvations;
            return CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: <Widget>[
                SliverToBoxAdapter(
                  child: _buildHeaderSection(),
                ),
                SliverToBoxAdapter(
                  child: _buildAppointmentRequestSection(),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 28, vertical: 8),
                    child: Text(
                      "Next Reservations",
                      style: TextStyle(
                          color: kIndigoLight,
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      AppointmentCard(
                        name: 'Carl Pope',
                        dateTime: '09 Jan 2020, 11am - 02pm',
                        padding: 16,
                      ),
                      AppointmentCard(
                        name: "Carl Pope",
                        dateTime: "09 Jan 2020, 11am - 02pm",
                        padding: 16,
                      ),
                      AppointmentCard(
                        name: "Ora Murray",
                        dateTime: "10 Jan 2020, 9am - 10am",
                        padding: 16,
                      ),
                      AppointmentCard(
                        name: "Dorothy Nelson",
                        dateTime: "09 Jan 2020, 8am - 10am",
                        padding: 16,
                      ),
                      AppointmentCard(
                        name: "Carl Pope",
                        dateTime: "09 Jan 2020, 11am - 02pm",
                        padding: 16,
                      ),
                      AppointmentCard(
                        name: "Ora Murray",
                        dateTime: "10 Jan 2020, 9am - 10am",
                        padding: 16,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildHeaderSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 28, right: 28, top: 16, bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Welcome Back!",
            style: TextStyle(
              color: kIndigoLight,
              fontSize: 22,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            "Doctor Peterson",
            style: TextStyle(
              color: kIndigoDark,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAppointmentRequestSection() {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => AppointmentRequestPage()));
      },
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        margin: EdgeInsets.symmetric(horizontal: 28, vertical: 8),
        elevation: 8,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16),
                color: kBlueColor,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Appointment Request",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[300],
                          ),
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.grey[300],
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.watch_later,
                          color: Colors.grey[100],
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "12 Jan 2020, 8am - 10am",
                          style: TextStyle(
                            color: Colors.grey[100],
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Hero(
                            tag: 1,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                              child: Image.network(
                                "https://img.freepik.com/free-photo/handsome-young-businessman-shirt-eyeglasses_85574-6228.jpg?size=626&ext=jpg",
                                height: 56,
                                width: 56,
                                fit: BoxFit.fill,
                              ),
                            )),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Louis",
                                style: TextStyle(
                                    color: kIndigoDark,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Patterson",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        Icon(
                          Icons.info_outline,
                          color: kBlueColor,
                          size: 25,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "ACCEPT",
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "DECLINE",
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
