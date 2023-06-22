import 'package:flutter/material.dart';
class CIE1 extends StatefulWidget {
  const CIE1({Key? key}) : super(key: key);

  @override
  State<CIE1> createState() => _CIE1State();
}

class _CIE1State extends State<CIE1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'CIE-1',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,

          ),
        ),
      ),
    );
  }
}
