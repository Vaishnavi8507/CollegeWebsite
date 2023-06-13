import 'package:dashclg/attendance/pages/editable.dart';
import 'package:dashclg/infoPages/additional.dart';
import 'package:dashclg/infoPages/exam.dart';
import 'package:dashclg/infoPages/updates.dart';
import 'package:flutter/material.dart';
class FacultyDashboard extends StatefulWidget {
  const FacultyDashboard({Key? key}) : super(key: key);

  @override
  State<FacultyDashboard> createState() => _FacultyDashboardState();
}

class _FacultyDashboardState extends State<FacultyDashboard> {
  Card facultyDashboard(String title, String img, int index) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8),
      child: Container(
        decoration: index == 0 || index == 1 || index == 2 || index==3
            ? BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(3.0, -1.0),
            colors: [
              Colors.deepPurple,
              Colors.orange,
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
              Colors.pinkAccent,
              Colors.amber,
            ],
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
              blurRadius: 2,
              offset: Offset(2, 2),
            )
          ],
        ),
        child: InkWell(
          onTap: () {
            if (index == 0) {
              Navigator.push(context,MaterialPageRoute(builder: ((context)=>EditablePage())));
              //1.item
            }
            if (index == 1) {
              Navigator.push(context,MaterialPageRoute(builder: ((context)=>ExamResultScreen())));
              //2.item
            }
            if (index == 2) {
              Navigator.push(context,MaterialPageRoute(builder: ((context)=>Updates())));
              //2.item
            }
            if (index == 3) {
              Navigator.push(context,MaterialPageRoute(builder: ((context)=>AddCie())));
              //2.item
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
          const SizedBox(height: 150),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "Faculty Activity",
                      style:
                      TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
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
                facultyDashboard("Attendance", "assets/images/attend.png", 0),
                facultyDashboard("Examination", "assets/images/exam.png", 1),
                facultyDashboard("Additional CIE", "assets/images/exam.png", 2),
                facultyDashboard("Updates", "assets/images/update.png", 2),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
