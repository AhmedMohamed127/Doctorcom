import 'package:DoctorCom/constants/colors.dart';
import 'package:DoctorCom/widgets/shape.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Doctors extends StatefulWidget {
  @override
  _DoctorsScreenState createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<Doctors> {
  void navigationPage(String rout) {
    Navigator.of(context).pushNamed(rout);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxScrolled) {
        return <Widget>[
          //   createSilverAppBar1(),
          createSilverAppBar2()
        ];
      },
          body:
          //double height = MediaQuery.of(context).size.height;
          ListView.builder(
            itemBuilder: (ctx, index) {
              return Shape(
                name: 'Doaa mohammed',
                imageurl:
                'http://i2.wp.com/moneynation.com/wp-content/uploads/2016/04/Doctor-Money-Women-vs-Men.jpg',
                title: 'El shourok: panorama mall',
                bio:
                'Dentestry specialized in pediatric Dentistry, cosmetic Dentistry,oral and maxillofacial sugery',
                fees: 160,
                specialization: 'DENTISTRY',
              );
            },
            itemCount: 15,
          ),
        ));
  }
      //double height = MediaQuery.of(context).size.height;

  SliverAppBar createSilverAppBar1() {
    return SliverAppBar(
      backgroundColor: b3,
      expandedHeight: 300,
      floating: false,
      elevation: 0,
      flexibleSpace: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return FlexibleSpaceBar(
          collapseMode: CollapseMode.parallax,
          background: Container(
            color: Colors.white,
            child: Image.asset(
              'assets/mainBackImage.jpg',
              fit: BoxFit.cover,
            ),
          ),
        );
      }),
    );
  }

  SliverAppBar createSilverAppBar2() {
    return SliverAppBar(
      backgroundColor: b3,
      pinned: true,
      title: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 40,
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.withOpacity(0.6),
                offset: const Offset(1.1, 1.1),
                blurRadius: 5.0),
          ],
        ),
        child: CupertinoTextField(
          // controller: _filter,
          keyboardType: TextInputType.text,
          placeholder: 'Search',
          placeholderStyle: TextStyle(
            color: Color(0xffC4C6CC),
            fontSize: 14.0,
            fontFamily: 'Brutal',
          ),
          prefix: Padding(
            padding: const EdgeInsets.fromLTRB(5.0, 5.0, 0.0, 5.0),
            child: Icon(
              Icons.search,
              size: 18,
              color: Colors.black,
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
