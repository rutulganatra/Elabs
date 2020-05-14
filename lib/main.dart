import 'dart:ui';

import 'package:elabs/loginscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget _buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        onPressed: () =>
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            ),
        elevation: 5.0,
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Colors.white,
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Color(0xFF527DAA),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }
  Widget _buildRegisterBtn() {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: () => print('Login Button Pressed'),
        elevation: 5.0,
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Colors.white,
        child: Text(
          'REGISTER',
          style: TextStyle(
            color: Color(0xFF527DAA),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: <Widget>[
            Container(
              width: 350.0,
              child:Text('Welcome,',
                style: TextStyle(
                    fontFamily: "Comic Sans MS",
                    color: Colors.white,
                    fontSize: 40.0
                ),
              ),
            ),
            SizedBox(height: 100),
            SizedBox(
                width: 350.0, // match_parent
                child:_buildLoginBtn(),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 350.0, // match_parent
              height: 50.0,
              child:_buildRegisterBtn(),
            ),
          ],
        ),
      ),
    );
  }

  void tmpFunction() {
    print("hello");
  }
}
