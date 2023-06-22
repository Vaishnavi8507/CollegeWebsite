import 'package:flutter/material.dart';
class Igniet22 extends StatefulWidget {
  const Igniet22({Key? key}) : super(key: key);

  @override
  State<Igniet22> createState() => _Igniet22State();
}

class _Igniet22State extends State<Igniet22> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Punarvasu',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      ),
      body: Container(
        width: 500,
        height: 500,
        child: Text(
          'Ig-Niet 2k22 was one of best event of the year.It was organized very well with all the appropriate facilties.All the authorities took a good charge of it and the student council managed to get done all the necessary requirements. It was worth to remember the event.'
          'Lets have a glimpse about the event.',
          style: TextStyle(
            letterSpacing: 1.5,
            color: Colors.black87,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            height: 1.5,
          ),
        ),

      ),
    );
  }
}
