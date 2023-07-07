import 'package:cicks/components/my_button.dart';
import 'package:cicks/components/my_text_field.dart';
import 'package:cicks/components/square_tile.dart';
import 'package:cicks/pages/signup_page.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

class Loginpage extends StatelessWidget {
  Loginpage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // void signUserIn(){
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50.0,),
                // Image.asset("assets/images/shoe.png",
                // height: 160,
                // width: 160,),
                Icon(Icons.snowshoeing, size: 100,),
                SizedBox(height: 50.0,),
                Text("Welcome back , Let CICKS...",
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
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                SizedBox(height: 10.0,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forget Password?" ,
                        style: TextStyle(color: Colors.grey[600]),),
                    ],
                  ),
                ),
                SizedBox(height: 25.0,),
                MyButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Homepage()));}
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
                        child: Text("Or continue with"),
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
                SizedBox(height: 40.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   SquareTile(imagepath: 'assets/images/google_logo.png',heigh: 45,),
                    SizedBox(width: 30.0,),
                   SquareTile(imagepath: 'assets/images/facebook_logo.png',heigh: 45,)
                  ],
                ),
                SizedBox(height: 40.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have account?",
                    style: TextStyle(
                      color: Colors.grey[700]
                    ),),
                    SizedBox(width: 4.0,),
                    TextButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      child: Text("Sign Up",style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
