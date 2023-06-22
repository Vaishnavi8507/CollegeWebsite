import 'package:dashclg/subScreen/overallprofile.dart';
import 'package:dashclg/subScreen/queryscreen.dart';
import 'package:dashclg/subScreen/resultscreen.dart';
import 'package:dashclg/subScreen/studymaterial.dart';
import 'package:flutter/material.dart';

class Student extends StatefulWidget {
  const Student({Key? key}) : super(key: key);

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {
  Card studentDashboard(String title,String img,int index){
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8),
      child: Container(
        decoration: index==0 ||index==1 ||index==2 ||index==3
            ?BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(
            begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(3.0, -1.0),
              colors:[
                Colors.redAccent,
                Colors.greenAccent,
              ],
          ),
          boxShadow: const[
            BoxShadow(
              color: Colors.white,
              blurRadius: 3,
              offset: Offset(2,2),
            )
          ],
        ):
        BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(3.0, -1.0),
              colors: [
                Colors.orangeAccent,
                Colors.black54,
              ]
          ),
          boxShadow: const[
            BoxShadow(
              color: Colors.white,
              blurRadius: 2,
              offset: Offset(2,2),
            )
          ]
        ),
        child:InkWell(
          onTap: (){
            if(index==0){
              Navigator.push(context,MaterialPageRoute(builder: ((context)=>OverallProfile(name:'Vaishnvai',usn:'4NN21IS053',attendance:'95%',cie1:'18',cie2: '16',cie3:'19',assignment:'20',quiz:'19',totalScore: '46',elgibile: 'Yes',))));
            }
            if(index==1){
              Navigator.push(context,MaterialPageRoute(builder: ((context)=>StudyMaterial(documentPath: "C:\Users\vaish\Downloads\tempres.pdf",))));
            }
            if(index==2){
              Navigator.push(context,MaterialPageRoute(builder: ((context)=>ResultScreen())));
            }
            if(index==3){
              Navigator.push(context,MaterialPageRoute(builder: ((context)=>QueryScreen())));
            }
            },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize:MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: [
              const SizedBox(height: 50),
              Center(
                child: Image.asset(
                  img,
                  height: 50,
                  width: 50,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 19,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
      )
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color.fromARGB(255, 170, 193, 232),
    body: Column(
      children: [
        const SizedBox(height: 150,),
        Padding(
          padding: const EdgeInsets.only(left:16,right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Student Development",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),),
              SizedBox(height: 12),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.all(2),
            children: [
              studentDashboard("Overall Profile", "assets/images/studprofile.png", 0),
              studentDashboard("Study Material", "assets/images/study.png", 1),
              studentDashboard("VTU Result", "assets/images/vtu.png", 2),
              studentDashboard("Queries", "assets/images/query.png", 3),
            ],
          ),
        )
      ],
    ),
    );
  }
}
