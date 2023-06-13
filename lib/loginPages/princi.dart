import 'package:dashclg/screens/princiScreen.dart';
import 'package:flutter/material.dart';
class PrincipalScreen extends StatefulWidget {
  const PrincipalScreen({Key? key}) : super(key: key);

  @override
  State<PrincipalScreen> createState() => _PrincipalScreenState();
}

class _PrincipalScreenState extends State<PrincipalScreen> {
  late bool PassToggle=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Principal Login',
        style: TextStyle(
          color: Colors.black,
        ),),
      ),
      body:Container(
          width:MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 30.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10.0,
                offset: Offset(0,5),
              ),
            ],
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text(
          'Principal Login',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15),
        TextFormField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: 'Username',
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide:BorderSide(color:Colors.deepPurple),
            ),
          ),
        ),
        SizedBox(height: 15),
        TextFormField(
          obscureText: !PassToggle,
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide:BorderSide(color:Colors.deepPurple),
            ),
            suffixIcon: Icon(Icons.remove_red_eye_rounded),
          ),
        ),
        SizedBox(height: 15),
        ElevatedButton(
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context)=>Screen())
            );
          },
          child: Text('Login'),
        ),
        ],
        )
      )
    );
  }
}
