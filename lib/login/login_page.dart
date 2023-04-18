import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

//NOTE: To login --> mail: technovation@gmail.com and password: 123456 or a new user can be created from sign up page.

class LoginPage extends StatefulWidget{
  final VoidCallback showSignUpPage;
  const LoginPage({Key? key, required this.showSignUpPage}) : super(key: key);

  @override 
  State<LoginPage>  createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {

  //text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(), 
      password: _passwordController.text.trim(),
    );

  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 206, 188, 255),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Form(
          child: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.mood,
                      size: 100,
                      ),
                    SizedBox(height: 20),
                    //Welcome Back!
                    Text(
                      'Welcome Back!',
                      style: TextStyle( 
                        fontSize: 24,
                        ),
                    ),
                    SizedBox(height: 5),
                    //Login
                    Text(
                      'Login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold, 
                        fontSize: 35,
                        ),
                    ),
                    SizedBox(height: 20),
                      
                    //username textfield
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Email",
                            //labelText: "email",
                            label: Text("Email",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                            overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    //password textfield
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: TextFormField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Password",
                            label: Text("Password",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                            overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 35),
                    
                    //login button
                    GestureDetector(
                      onTap: signIn,
                      child: Container(
                        width: 150,
                        height: 50,
                        child: 
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 152, 44, 235),
                           
                        ),
                          onPressed: signIn,
                          child: 
                          Text("Login", 
                          style: TextStyle(
                            fontSize: 15,
                          )
                          ),
                          
                        ),
                      ),
                    ),
                    SizedBox(height: 35),
                    // not a member, sign up now
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Not a member?",
                        style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                        Text(" "),
              
                        GestureDetector(
                          onTap: widget.showSignUpPage,
                          child: Text("Sign up now!",
                          style: TextStyle(color: Color.fromARGB(255, 202, 87, 241),
                          fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),


    );
  }
}