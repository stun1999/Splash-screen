import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:splash/NextScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3),
            ()=> Navigator.push(context,
                MaterialPageRoute(builder: (context)=>nextScreen())
            )
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('asset/logo.PNG',height: 200,),
          SizedBox(height: 20,),
          Text('Welcome to!',style: TextStyle(color: Colors.redAccent,fontSize: 35,fontWeight: FontWeight.bold),),
          SizedBox(height: 40,),
          SpinKitRipple(color: Colors.redAccent,size: 60,)
        ],
      ),
    );
  }
}
