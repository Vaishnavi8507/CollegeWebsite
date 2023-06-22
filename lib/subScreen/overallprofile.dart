import 'package:flutter/material.dart';
class OverallProfile extends StatefulWidget {
  final String name;
  final String usn;
  final String attendance;
  final String cie1;
  final String cie2;
  final String cie3;
  final String totalScore;
  final String assignment;
  final String quiz;
  final String elgibile;
  const OverallProfile({Key? key,required this.name ,required this.usn,required this.attendance, required this.cie1, required this.cie2,required this.cie3, required this.elgibile,required this.totalScore,required this.assignment, required this.quiz
  });

  @override
  State<OverallProfile> createState() => _OverallProfileState();
}

class _OverallProfileState extends State<OverallProfile> {
  late final String name='Vaishnavi J';
  late final String usn='4NN21IS053';
  late final String attendance='95%';
  late final String cie1='8';
  late final String cie2='8';
  late final String cie3='10';
  late final String assignment='10';
  late final String quiz='10';
  late final String totalScore='46';
  late final String elgibile='Yes';


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Student Profile',
        ) ,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/vj.jpeg'),
          radius: 50.0,
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          width: 300.0,
          height: 450.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0,3),
              ),
            ],
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 15.0),
              Text('Name:$name', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0,),),
              SizedBox(height: 15.0),
              Text('USN:$usn',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold)),
              SizedBox(height: 15.0),
              Text('Attendance:$attendance',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
              SizedBox(height: 15.0),
              Text('CIE1:$cie1',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
              SizedBox(height: 15.0),
              Text('CIE2:$cie2',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
              SizedBox(height: 15.0),
              Text('CIE3:$cie3',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
              SizedBox(height: 15.0),
              Text('Assignment:$assignment',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
              SizedBox(height: 15.0),
              Text('Quiz:$quiz',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
              SizedBox(height: 15.0),
              Text('Total Score:$totalScore',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
              SizedBox(height: 15.0),
              Text('Eligible for SEE:$elgibile',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),

    );
  }
}



