import 'package:DoctorCom/DatePicker/DatePicker_Screen.dart';
import 'package:DoctorCom/constants/colors.dart';
import 'package:DoctorCom/utils/navigations.dart';
import 'package:DoctorCom/widgets/rating.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:android_intent/android_intent.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io' show Platform;

class Shape extends StatelessWidget {
  final String name;

  final String email;

  final String imageurl;

  final String title;

  final int fees;

  final String bio;

  final String specialization;

  final Function onTap ;

  const Shape({
    @required this.name,
    @required this.email,
    @required this.imageurl,
    @required this.title,
    @required this.bio,
    @required this.fees,
    @required this.specialization,
    @required this.onTap,

  });

  void selectDoc() {}

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFFFFFFF),
      child: Container(
        margin: const EdgeInsets.all(10),
        /* left: 20.0,
          right: 20.0,
          bottom: 10.0,
        ),*/
        child: Card(
          elevation: 5.2,
          child: InkWell(
              onTap: onTap,
              child: Container(
                  child: Align(
                      alignment: FractionalOffset.topLeft,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(children: [
                          Container(
                            margin: EdgeInsets.only(
                              right: 10.0,
                              left: 0.0,
                            ),
                            width: 110,
                            height: 130,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  CachedNetworkImageProvider(imageurl),
                            ),
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: FractionalOffset.centerLeft,
                                  child: Text(
                                    'Dr $name',
                                    style: TextStyle(
                                      fontFamily: 'RobotoCondensed',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 22,
                                      color: Color(0xff125B81),
                                    ),
                                  ),
                                ),

                                Align(
                                  alignment: FractionalOffset.centerLeft,
                                  child: Text(
                                    'Email: $email',
                                    style: TextStyle(
                                      fontFamily: 'RobotoCondensed',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 22,
                                      color: Color(0xff125B81),
                                    ),
                                  ),
                                ),

                                Align(
                                  alignment: FractionalOffset.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: 5.0,
                                    ),
                                    child: Text(
                                      specialization,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: Color(0xff34495E),
                                      ),
                                    ),
                                  ),
                                ),

                                Align(
                                  alignment: FractionalOffset.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: 5.0,
                                    ),
                                    child: Text(
                                      bio,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: Color(0xFF6f6f6f),
                                      ),
                                    ),
                                  ),
                                ),

                                Align(
                                  alignment: FractionalOffset.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: 5.0,
                                    ),
                                    child: Text(
                                      title,
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xFF9f9f9f),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: FractionalOffset.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: 0.0,
                                    ),
                                    child: Text(
                                      'fees : $fees',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: Color(0xFF9f9f9f),
                                      ),
                                    ),
                                  ),
                                ),
                                // SizedBox( height: 5  ),
                                RatingBar.builder(
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 0.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },

                                  //SizedBox(height: 30,),
                                ),
                                Align(
                                  alignment: FractionalOffset.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: 2.0,
                                    ),
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        var position =
                                            await Geolocator.getCurrentPosition(
                                                desiredAccuracy:
                                                    LocationAccuracy.high);
                                        var x = position.latitude;
                                        var y = position.longitude;
                                        var origin =
                                            '$x,$y'; // lat,long like 123.34,68.56
                                        var destination = 'مدينتي';
                                        if (Platform.isAndroid) {
                                          final intent = AndroidIntent(
                                              action: 'action_view',
                                              data: Uri.encodeFull(
                                                  'https://www.google.com/maps/dir/?api=1&origin=' +
                                                      origin +
                                                      '&destination=' +
                                                      destination +
                                                      '&travelmode=driving&dir_action=navigate'),
                                              package:
                                                  'com.google.android.apps.maps');
                                          await intent.launch();
                                        } else {
                                          var url =
                                              'https://www.google.com/maps/dir/?api=1&origin=' +
                                                  origin +
                                                  '&destination=' +
                                                  destination +
                                                  '&travelmode=driving&dir_action=navigate';
                                          if (await canLaunch(url)) {
                                            await launch(url);
                                          } else {
                                            throw 'Could not launch $url';
                                          }
                                        }
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 40,
                                        width: 85,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.0)),
                                          gradient: LinearGradient(
                                            colors: [b3, b1],
                                          ),
                                        ),
                                        padding: const EdgeInsets.all(1.0),
                                        child: Text(
                                          'Location',
                                          style: TextStyle(
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ]),
                      )))),
        ),
      ),
    );
  }
}
