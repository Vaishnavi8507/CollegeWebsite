import 'package:flutter/material.dart';
class Igniet23 extends StatefulWidget {
  const Igniet23({Key? key}) : super(key: key);

  @override
  State<Igniet23> createState() => _Igniet23State();
}

class _Igniet23State extends State<Igniet23> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Inara',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            //foreground: Color.red,),
        ),
      ),
      ),
      body: Container(
        width: 500,
        height: 500,
        child: Text(
          'Ig-Niet 2k23 was one of best event of the year.It was organized very well with all the appropriate facilties.All the authorities took a good charge of it and the student council managed to get done all the necessary requirements. It was worth to remember the event.'
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
