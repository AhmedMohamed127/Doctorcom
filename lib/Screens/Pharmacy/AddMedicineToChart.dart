
import 'package:DoctorCom/constants/colors.dart';
import 'package:DoctorCom/widgets/alertDialog.dart';
import 'package:flutter/material.dart';


class AddMedicineToChart extends StatefulWidget {
  @override
  _AddMedicineToChartState createState() => _AddMedicineToChartState();
}

class _AddMedicineToChartState extends State<AddMedicineToChart> {
  @override
  
  Widget build(BuildContext context) {
    var str =[
      "Panadol Advance 500 mg-24 Tablets",
      "Panadol Extra -24 F.C.Tablet",
      "Panadol Joint -24 ER Tablets",
      "Panadol Day Gold & Flu -24 F.C Tablets ",
      "Adol 500 mg -24 Caplets",
      "Adol Extra -24 Caplets",
      "Paracetamol 500 mg - 20 Tablet B.P.2010",
    ];
    var images =[
      "assets/images/panadol.jpg",
      "assets/images/panadol extra.jpg",
      "assets/images/panadol joint.jpg",
      "assets/images/panadol gold.jpg",
      "assets/images/adol.jpg",
      "assets/images/adol extra.jpg",
      "assets/images/paracetamol.jpg",
    ];
    var describe =[
      "Box",
      "Box",
      "strip",
      "strip",
      "Box",
      "Box",
      "Box",
    ];
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
        body: ListView.builder(
            padding: const EdgeInsets.all(10.0),
            itemCount: str.length,
            itemBuilder: ( context,  index){
              return Card(
                child: ListTile(
                  title: Text(str[index]),

                  subtitle: Text(describe[index]),
                  leading: Image.asset(images[index]),
                  trailing: TextButton.icon(
                    onPressed: (){},
                    label: Text("Add",style: TextStyle(color: Colors.blue),) ,
                    icon: Icon (Icons.add,color: Colors.blue,),
                  ),

                  isThreeLine: true,
                  onTap: (){},
                ),
              );
            })
    );
  }

}

