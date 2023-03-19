 
import 'package:DoctorCom/Screens/Pharmacy/AddMedicineToChart.dart';
import 'package:DoctorCom/constants/colors.dart';
import 'package:DoctorCom/model/store.dart';
import 'package:DoctorCom/widgets/alertDialog.dart';
import 'package:DoctorCom/widgets/drawer.dart';
 
import 'package:DoctorCom/widgets/responsive_ui.dart';
import 'package:DoctorCom/widgets/search_widget_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pharmacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PharmacyScreen();
  }
}

class PharmacyScreen extends StatefulWidget {
  @override
  _PharmacyScreenState createState() => _PharmacyScreenState();
}

class _PharmacyScreenState extends State<PharmacyScreen> {
  double _height;
  double _width;
  double _pixelRatio;
  bool _large;
  bool _medium;

  /* void _selectScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return SignInPage();
    }));
  }*/

  void navigationPage(String rout) {
    Navigator.of(context).pushNamed(rout);
  }

  void _navigationPage(String rout) {
    Navigator.pushReplacementNamed(context, rout);
  }
 
 void _selectScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return AddMedicineToChart(); 
    }));
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    _pixelRatio = MediaQuery.of(context).devicePixelRatio;
    _large = ResponsiveWidget.isScreenLarge(_width, _pixelRatio);
    _medium = ResponsiveWidget.isScreenMedium(_width, _pixelRatio);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: b3,
          title: Text("Online Pharmasy"),
          actions: <Widget>[
            Row(
              children: [
                Container(
                  child: InkWell(
                      child: Icon(
                        Icons.notifications,
                      ),
                      onLongPress: () {
                        Text("notifications");
                      },
                      onTap: () => {}),
                  margin: EdgeInsets.only(right: 20),
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF0097A1),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  child: InkWell(
                    child: Icon(
                      Icons.campaign_outlined,
                    ),
                    onLongPress: () {
                      Text("Emergency Service");
                    },
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return VoicePay();
                        },
                      );
                    },
                  ),
                  margin: EdgeInsets.only(right: 20),
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFFF493C),
                  ),
                ),
              ],
            ),
          ],
        ),
      //  drawer: MyDrawer(),
        body:

            /*Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.linearToSrgbGamma()),
            ),

            //  backgroundColor: Colors.white,
            child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxScrolled) {
                return <Widget>[
                  //   createSilverAppBar1(),
                  createSilverAppBar2()
                ];
              },
              body:*/
            Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.linearToSrgbGamma()),
          ),

          //  backgroundColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                SearchWidgetHome(),
                Text(
                  'Effortless medicine delivery and refill',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 15),

                /*
          Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF073738),
                blurRadius: 10,
                offset: Offset(2, 3),
              ),
            ],
          ),
         
          child: TextField(
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'What are you Looking for?',

              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              prefixIcon: Icon(Icons.search),
            ),
          ),*/

                SizedBox(height: 15),
                Container(
                  child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.linked_camera),
                        label: Text("Claim"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.camera_alt_outlined),
                        label: Text("image"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.call),
                        label: Text("Call"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Text(
                    "Browse by Category",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Gridview(),
              ],
            ),
          ),
        ));
  }

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
              'assets/images/mainBackImage.jpg',
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

class Gridview extends StatelessWidget {
  const Gridview({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: storeItems.length,
      // ignore: missing_return
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () =>{
   Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return AddMedicineToChart(); 
    })),
          },
          child: Card(
            child: Stack(
              alignment: FractionalOffset.bottomCenter,
              children: [
                Container(
                  child: Image.asset(storeItems[index].itemImage),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 35.0,
                  color: Colors.white,
                  child: Text(storeItems[index].imageName),
                ),
              ],
            ),
          ),
        );
      },
    ));
  }
}
