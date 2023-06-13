import 'package:flutter/material.dart';
class ResultScreen extends StatelessWidget {
  final String faculty;
  final String sem;
  final String branch;
  ResultScreen( this.faculty,this.sem, this.branch,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Final'),
      ),
      body: Center(
        child: Text('Selected Faculty:$faculty\nSelected Sem:$sem\nSelected Branch:$branch'),
      ),
    );
  }
}

