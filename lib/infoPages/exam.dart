import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ExamResultScreen(),
  ));
}

class ExamResultScreen extends StatefulWidget {
  @override
  _ExamResultScreenState createState() => _ExamResultScreenState();
}

class _ExamResultScreenState extends State<ExamResultScreen> {
  TextEditingController exam1Controller = TextEditingController();
  TextEditingController exam2Controller = TextEditingController();
  TextEditingController exam3Controller = TextEditingController();
  String finalResult = '';

  void calculateFinalResult() {
    double exam1 = double.tryParse(exam1Controller.text) ?? 0;
    double exam2 = double.tryParse(exam2Controller.text) ?? 0;
    double exam3 = double.tryParse(exam3Controller.text) ?? 0;

    double average = (exam1 + exam2 + exam3) / 3;

    setState(() {
      finalResult = 'Final Result: $average';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exam Result'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: exam1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Exam 1',
              ),
            ),
            TextField(
              controller: exam2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Exam 2',
              ),
            ),
            TextField(
              controller: exam3Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Exam 3',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: calculateFinalResult,
              child: Text('Calculate'),
            ),
            SizedBox(height: 16.0),
            Text(
              finalResult,
              style: TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
    );
  }
}
