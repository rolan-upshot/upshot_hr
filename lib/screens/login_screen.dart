// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:upshot_hr/screens/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

/*
 The main body of the loginscreens' Scaffold is a SingleScrollView. This widget is useful 
 when you have a single box that will normally be entirely visible, but you need to make sure it can be scrolled 
 if the container gets too small in one axis (the scroll direction).
 The child of the SingleScrollView is a Column which has 7 children, the first three of which are Paddings.
 Padding widget in flutter does exactly what its name says, it adds padding or empty space around a widget or a bunch of widgets. 
 We can apply padding around any widget by placing it as the child of the Padding widget. 
 The size of the child widget inside padding is constrained by how much space is remaining after adding empty space around. 
 The Padding widget adds empty space around any widget by using the abstract EdgeInsetsGeometry class.
 The Columns 4 padding widgets are intended to be used for:
 1. logo image (wrapped in a padding)
 2. email textfield (wrapped in a padding )
 3. password textfield (wrapped in a padding)
 4. TextButton for "Forgot Password link"
 5. Container for the "Login" button
 6. SizedBox for 
 7. Text for "New User? Create Account" message. Could have been a TextBox for clickability...
*/

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: FlutterLogo()),
                //child: Image.asset('asset/images/flutter-logo.png')),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            TextButton(
              onPressed: () {
                //TODO FORGOT PASSWORD SCREEN GOES HERE
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomeScreen()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
            Text('New User? Create Account')
          ],
        ),
      ),
    );
  }
}
