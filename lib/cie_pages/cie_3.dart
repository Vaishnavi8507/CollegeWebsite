import 'package:flutter/material.dart';
class CIE3 extends StatefulWidget {
  const CIE3({Key? key}) : super(key: key);

  @override
  State<CIE3> createState() => _CIE3State();
}

class _CIE3State extends State<CIE3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('CIE-3',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        ),
        ),
      ),
    );
  }
}
