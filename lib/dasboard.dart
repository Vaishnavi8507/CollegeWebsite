//import 'dart:html';

import 'package:dashclg/loginPages/faculty.dart';
import 'package:dashclg/loginPages/hod.dart';
import 'package:dashclg/loginPages/princi.dart';
import 'package:dashclg/loginPages/student.dart';
import 'package:dashclg/loginPages/event.dart';
import 'package:dashclg/loginPages/settings.dart';
import 'package:flutter/material.dart';

class MakeDashboardItems extends StatefulWidget {
  const MakeDashboardItems({Key? key}) : super(key: key);

  @override
  _MakeDashboardItemsState createState() => _MakeDashboardItemsState();
}

class _MakeDashboardItemsState extends State<MakeDashboardItems> {
  Card makeDashboardItem(String title, String img, int index) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8),
      child: Container(
        decoration: index == 0 || index == 3 || index == 4
            ? BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(3.0, -1.0),
            colors: [
              Colors.deepPurple,
              Colors.amberAccent,
            ],
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
              blurRadius: 3,
              offset: Offset(2, 2),
            )
          ],
        )
            : BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(3.0, -1.0),
            colors: [
              Colors.cyan,
              Colors.amber,
            ],
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
              blurRadius: 3,
              offset: Offset(2, 2),
            )
          ],
        ),
        child: InkWell(
          onTap: () {
            if (index == 0) {
              Navigator.push(context,MaterialPageRoute(builder: ((context)=>PrincipalScreen())));
              //1.item
            }
            if (index == 1) {
              Navigator.push(context,MaterialPageRoute(builder: ((context)=>HODScreen())));
              //2.item
            }
            if (index == 2) {
              Navigator.push(context,MaterialPageRoute(builder: ((context)=>FacultyScreen())));
              //3.item
            }
            if (index == 3) {
              Navigator.push(context,MaterialPageRoute(builder: ((context)=>StudentScreen())));
              //4.item
            }
            if (index == 4) {
              Navigator.push(context,MaterialPageRoute(builder: ((context)=>EventScreen())));
              //5.item
            }
            if (index == 5) {
              Navigator.push(context,MaterialPageRoute(builder: ((context)=>Settings())));
              //6.item
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: [
              const SizedBox(height: 50),
              Center(
                child: Image.asset(
                  img,
                  height: 50,
                  width: 50,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 170, 193, 232),
      body: Column(
        children: [
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "NIE INSTITUTE OF TECHNOLOGY",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Dashboard:",
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(2),
              children: [
                makeDashboardItem("Principal Login", "assets/images/principal.png", 0),
                makeDashboardItem("HOD Login", "assets/images/HOD.png", 1),
                makeDashboardItem("Faculty Login", "assets/images/Faculty.png", 2),
                makeDashboardItem("Student Login", "assets/images/Student.png", 3),
                makeDashboardItem("Events", "assets/images/events.png", 4),
                makeDashboardItem("Settings", "assets/images/settings.png", 5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}