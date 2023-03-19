import 'package:DoctorCom/constants/colors.dart';
import 'package:flutter/material.dart';

import 'Searchmore.dart';

class SearchWidgetHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      height: 50,
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(25)),
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: "what you are looking for "),
                ),
              ),
            ],
          ),
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            child: ButtonTheme(
              minWidth: 70,
              height: 55,
              child: TextButton(
                onPressed: () {
                  showSearch(context: context, delegate: Datasearch());
                },
                child: Icon(
                  Icons.search_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
