import 'package:cicks/main.dart';
import 'package:cicks/pages/loginpage.dart';
import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_text_field.dart';
import '../components/square_tile.dart';
import 'homepage.dart';

class SignUp extends StatelessWidget {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // void signUserUp(){
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40.0,),
              Image.asset("assets/images/cicks2.png",
                height: 120,
                width: 120,),
              SizedBox(height: 10.0,),
              Text("Welcome to CICKS !",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey[700]
                ),),
              SizedBox(height: 25.0,),
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              SizedBox(height: 10.0,),
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),
              SizedBox(height: 10.0,),
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              SizedBox(height: 40.0,),
              MyButton(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Navigation()));}
              ),
              SizedBox(height: 25.0,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text("Or signUp with"),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagepath: 'assets/images/google_logo.png',heigh: 40,),
                  SizedBox(width: 30.0,),
                  SquareTile(imagepath: 'assets/images/facebook_logo.png',heigh: 40,)
                ],
              ),
              SizedBox(height: 25.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Have account?",
                    style: TextStyle(
                        color: Colors.grey[700]
                    ),),
                  SizedBox(width: 3.0,),
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Loginpage()),
                      );
                    },
                    child: Text("Sign In",style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
