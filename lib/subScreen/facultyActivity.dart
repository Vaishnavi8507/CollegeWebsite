import 'package:flutter/material.dart';
class FacultyActivity extends StatefulWidget {
  const FacultyActivity({Key? key}) : super(key: key);

  @override
  State<FacultyActivity> createState() => _FacultyActivityState();
}

class _FacultyActivityState extends State<FacultyActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Activity',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
    );
  }
}
