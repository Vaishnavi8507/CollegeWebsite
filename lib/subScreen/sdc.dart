import 'package:flutter/material.dart';
class SDC extends StatefulWidget {
  const SDC({Key? key}) : super(key: key);

  @override
  State<SDC> createState() => _SDCState();
}

class _SDCState extends State<SDC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Development Club',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
