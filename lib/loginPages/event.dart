import 'package:dashclg/subScreen/igniet22.dart';
import 'package:dashclg/subScreen/igniet23.dart';
import 'package:dashclg/subScreen/sdc.dart';
import 'package:flutter/material.dart';
class EventScreen extends StatefulWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Event Page',
        style:TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: ((context)=>Igniet23())));
              },
              child: Container(
                width:20,
                height:40,
                decoration: BoxDecoration(
              //    color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black87.withOpacity(0.3),
                      offset: Offset(0,2),
                      blurRadius: 5,
                    ),
                  ],
                  gradient: LinearGradient(
                    begin:Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.pinkAccent,
                      Colors.lightBlueAccent,
                    ],
                  ),
                ),
                child: Text(
                  'IG-NIET 2K23',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 18),
            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: ((context)=>Igniet22())));
              },
              child: Container(
                width:20,
                height:40,
                decoration: BoxDecoration(
                 // color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54.withOpacity(0.3),
                      offset: Offset(0,2),
                      blurRadius: 5,
                    ),
                  ],
                  gradient: LinearGradient(
                    begin:Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Colors.pinkAccent,
                      Colors.lightBlue,
                    ],
                  ),
                ),
                child: Text(
                  'IG-NIET 2K22',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 18),
            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: ((context)=>SDC())));
              },
              child: Container(
                width:20,
                height:40,
                decoration: BoxDecoration(
                  //color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54.withOpacity(0.3),
                      offset: Offset(0,2),
                      blurRadius: 5,
                    ),
                  ],
                  gradient: LinearGradient(
                    begin:Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.pinkAccent,
                      Colors.lightBlue,
                    ],
                  ),
                ),
                child: Text(
                  'Student Development Club',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

