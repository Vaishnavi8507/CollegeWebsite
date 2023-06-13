import 'package:dashclg/subScreen/resScreen.dart';
import 'package:flutter/material.dart';

class HOD extends StatefulWidget {
  const HOD({Key? key}) : super(key: key);

  @override
  State<HOD> createState() => _HODState();
}

class _HODState extends State<HOD> {
  String? _selectedFaculty;
  String? _selectedSem;
  String? _selectedBranch;
  String? _selectedSubject;
  List<String> _faculties = ['Girish G.C', 'Sudeep J', 'Prasanna Kumar','Manasa K.B','Shruthi B.S','Rajeshwari'];
  List<String>_sems = ['1st','2nd','3rd','4th','5th','6th','7th','8th'];
  List<String>_branch=['ISE'];
  Map<String,List<String>>_subjects={
    '1st Sem':['21MAT11-Engineering Mathematics','21PHY12-Engineering Physics','21ELE15-Basic Electrical Engineering'],
    '2nd Sem':['21CHE17-Engineering Chemistry','21ELN14-Basic Electronics','21ME25-Elements Of Mechanical Engineering '],
    '3rd Sem':['21MAT31-Tranform Calculus And Fourier Series','21CS32-Data Structures And Algorithms','21CS34-Computer Organization And Architecture'],
    '4th Sem':['21CSMAT41-Engineering Mathematics-4','21CS42-Design And Analysis Of Algorithm','21CS43-Operating Systems'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text(
          'Faculty Allotment',
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              value: _selectedFaculty,
              items: _faculties.map((String faculty) {
                return DropdownMenuItem<String>(
                  value: faculty,
                  child: Text(faculty),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedFaculty = newValue;
                });
              },
              decoration: InputDecoration(
                labelText: 'Choose Faculty',
                labelStyle: TextStyle(fontSize: 20, ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 20.0),
            DropdownButtonFormField<String>(
              value: _selectedSem,
              items: _sems.map((String sem) {
                return DropdownMenuItem<String>(
                  value: sem,
                  child: Text(sem),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedSem = newValue;
                  _selectedSubject= null; // Reset selected subject when sem changes
                });
              },
              decoration: InputDecoration(
                labelText: 'Choose Sem',
                labelStyle: TextStyle(fontSize: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 20.0,),
            DropdownButtonFormField<String>(
              value: _selectedSubject,
              items: _selectedSem != null ? (_subjects[_selectedSem!] ?? []).map((String subject) {
                return DropdownMenuItem<String>(
                  value: subject,
                  child: Text(subject),
                );
              }).toList() : null,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedSubject = newValue;
                });
              },
              decoration: InputDecoration(
                labelText: 'Choose Subject',
                labelStyle: TextStyle(fontSize: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 20),
            DropdownButtonFormField<String>(
              value: _selectedBranch,
              items: _branch.map((String branch) {
                return DropdownMenuItem<String>(
                  value: branch,
                  child: Text(branch),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedBranch = newValue;
                });
              },
              decoration: InputDecoration(
                labelText: 'Choose Branch',
                labelStyle: TextStyle(fontSize: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                if (_selectedFaculty != null && _selectedSem != null && _selectedBranch != null ) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResultScreen(_selectedFaculty!, _selectedBranch!, _selectedSem!)),
                  );
                }
              },
              child: Text(
                'Proceed',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                ),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black87,
                backgroundColor: Colors.green,
                minimumSize: Size(110,35),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
