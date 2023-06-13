import 'package:dashclg/dasboard.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'College Website',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("College Website"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Our College!',
              style: TextStyle(fontSize: 27,
              fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/clglogo.png',
              height: 250,
              width: 250,
            ),
            SizedBox(height: 20),
            Text(
              'We offer top-notch education and a vibrant campus life',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){
                showDialog(
                    context: context,
                    builder:(BuildContext context){
                      return AlertDialog(
                        title: Text('Explore for more options'),
                        actions: [
                          TextButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context)=>MakeDashboardItems()),
                              );
                            },
                            child: Text('Go Ahead'),
                          ),
                        ],
                      );
                    }
                );
              }, child: Text('Press for more'),
              // Navigate to the welcome page

            ),
          ],
        ),
      ),
    );
  }
}