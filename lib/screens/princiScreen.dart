import 'package:dashclg/subScreen/facultyActivity.dart';
import 'package:dashclg/subScreen/hodActivity.dart';
import 'package:dashclg/subScreen/maintain.dart';
import 'package:flutter/material.dart';
class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Principal Screen',
          style: TextStyle(

            fontWeight: FontWeight.bold,
            fontSize: 20.0,
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
                Navigator.push(
                  context,MaterialPageRoute(builder: ((context)=>HODActivity())));
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey,width:3.0),
                ),
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Text('HOD Activity',
                    style:TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            GestureDetector(
              onTap:(){
                Navigator.push(context,MaterialPageRoute(builder: ((contetx)=>FacultyActivity())));
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color:Colors.grey,width: 3.0),
                ),
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Text('Faculty Activity',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            GestureDetector(
              onTap:(){
                Navigator.push(context,MaterialPageRoute(builder: ((contetx)=>ClgMaintainance())));
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color:Colors.grey,width: 3.0),
                ),
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Text('Maintainance',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
