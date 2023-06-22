import 'package:flutter/material.dart';
class HODActivity extends StatefulWidget {
  const HODActivity({Key? key}) : super(key: key);

  @override
  State<HODActivity> createState() => _HODActivityState();
}

class _HODActivityState extends State<HODActivity> {
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
