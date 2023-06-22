import 'package:flutter/material.dart';
class ClgMaintainance extends StatefulWidget {
  const ClgMaintainance({Key? key}) : super(key: key);

  @override
  State<ClgMaintainance> createState() => _ClgMaintainanceState();
}

class _ClgMaintainanceState extends State<ClgMaintainance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Maintain',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
