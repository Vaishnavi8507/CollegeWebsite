import 'package:dashclg/CIE_1/pages/editable.dart';
import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Examination'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        child:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context)=>EditablePages())));
            },
         child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey,width: 3.0),
            ),
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text('CIE 1',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ],
            ),
          ),
          ),
          SizedBox(height: 20.0),
          GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: ((context)=>EditablePages())));
            },
          child:Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey,width:3.0,),
            ),
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text('CIE 2',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                ),
              ],
            ),
          ),
          ),
          SizedBox(height: 20.0),
          GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: ((context)=>EditablePages())));
            },
         child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey,width: 3.0),
            ),
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text('CIE 3',
                    style:TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )
                ),
              ],
            ),
          ),
          ),
        ],
      ),

      ),
    );
  }
}
class DetailsPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final String rowTitle=ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Page'),
      ),
      body: Center(
        child:Text(
        'You clicked on $rowTitle',
        style:TextStyle(
          fontSize:20.0,

    )
      ),
      ),
    );
  }
}






















