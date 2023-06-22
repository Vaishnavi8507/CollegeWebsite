import 'package:flutter/material.dart';
class CIE2 extends StatefulWidget {
  const CIE2({Key? key}) : super(key: key);

  @override
  State<CIE2> createState() => _CIE2State();
}

class _CIE2State extends State<CIE2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'CIE-2',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

