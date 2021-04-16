import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold
                ),
                  children: [
                    TextSpan(
                      text: 'LOG',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: 'IN',
                      style: TextStyle(
                        color: Color(0xFF27D29C),
                      ),
                    ),
                  ],
              ),
              ),
              SizedBox(height: 30.0,),
              Container(
                height: 45.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF282828),
                ),
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter your Email",
                    prefixIcon: Icon(Icons.email, color: Colors.white,),
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                height: 45.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF282828),
                ),
                child: TextField(
                  obscureText: _isObscure,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock, color: Colors.white,),
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 4,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 8, 0),
                    child: Icon(Icons.check_circle_outline,
                    color: Color(0xFF27D29C),
                    ),
                  ),
                  Text(
                    "Remember me",
                    style: TextStyle(color: Colors.white,),
                  ),
                  Padding(padding: const EdgeInsets.fromLTRB(120, 0, 0, 0),
                  ),
                  Text("Forget Password?",
                  style: TextStyle(
                    color: Color(0xFF27D29C),
                  ),),
                ],
              ),
              SizedBox(height: 4,),
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF27D29C),
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height:5,),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                  children: [
                    TextSpan(
                      text: "Don't have an account?",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: ' Sign up',
                      style: TextStyle(
                        color: Color(0xFF27D29C),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
