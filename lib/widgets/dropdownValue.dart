import 'package:DoctorCom/constants/colors.dart';
import 'package:flutter/material.dart';

class DropDownValue extends StatelessWidget {
  /* final List <String>items ;
 final String dValue;
  const DropDownValue( this.items, this.dValue);*/
var value ;

DropDownValue(this.value);

  @override
  Widget build(BuildContext context) {
    return DropDownValueScreen(value);
  }
}

class DropDownValueScreen extends StatefulWidget {
  String value ;
  DropDownValueScreen(this.value);
  @override
  _DropDownValueScreenState createState() => _DropDownValueScreenState(value);
}

class _DropDownValueScreenState extends State<DropDownValueScreen> {
  String dropdownValue = 'Pathology';
  _DropDownValueScreenState(this.value);
  String value ;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
     // iconDisabledColor: Colors.grey[700],
      iconEnabledColor: b3,
      iconSize: 24,
      elevation: 16,
      style: TextStyle(
        color: Colors.grey[700],
        fontFamily: 'Cairo',
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
       underline: Container(
        height: 2,
        color: Colors.grey[400],
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
          value = newValue;
        });
      },
      items: <String>[
        'Pathology',
        'Allergy and immunology',
        'Anesthesiology',
        'Dermatology',
        'Diagnostic radiology',
        'Emergency medicine',
        'Family medicine',
        'Internal medicine',
        'Medical genetics',
        'Neurology',
        'Nuclear medicine',
        'Obstetrics and gynecology',
        'Ophthalmology',
        'Surgery',
        'Urology',
        'Pediatrics',
        'Preventive medicine',
        'Psychiatry',
        'Radiation oncology',
        'Other',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
  
}

 class DropDownValuebranchNum extends StatefulWidget {
   @override
   _DropDownValuebranchNumState createState() => _DropDownValuebranchNumState();
 }
 
 class _DropDownValuebranchNumState extends State<DropDownValuebranchNum> {
     String dropdownValue = '1';
   @override
   Widget build(BuildContext context) {
     return DropdownButton<String>(
      value: dropdownValue,
     // iconDisabledColor: Colors.grey[700],
      iconEnabledColor: b3,
      iconSize: 24,
      elevation: 16,
      style: TextStyle(
        color: Colors.grey[700],
        fontFamily: 'Cairo',
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
       underline: Container(
        height: 2,
        color: Colors.grey[400],
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>[
        '1',
        '2',
        '3',
        '4',
        '5',
        '6',
        '7',
        '8',
        '+9',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
 }