import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  const SignUpPage({Key? key, required this.showLoginPage}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  //text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future signUp() async {
    if (passwordConfirmed()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _emailController.text.trim(), 
      password: _passwordController.text.trim(),
      );
    }
  }

  bool passwordConfirmed() {
    if (_passwordController.text.trim() == _confirmPasswordController.text.trim()) {
      return true;
    }
    else{
      new Container(
        child: 
        Text("Passwords are not the same!"),
      );
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
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
                      'Hello!',
                      style: TextStyle( 
                        fontSize: 24,
                        ),
                    ),
                    SizedBox(height: 5),
                    //Login
                    Text(
                      'Sign Up',
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
                    SizedBox(height: 20),
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
                    SizedBox(height: 20),

                    // confirm password textfield
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: TextFormField(
                          controller: _confirmPasswordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Confirm Password",
                            label: Text("Confirm Password",
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
                      onTap: signUp,
                      child: Container(
                        width: 150,
                        height: 50,
                        child: 
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 152, 44, 235),
                           
                        ),
                          onPressed: signUp,
                          child: 
                          Text("Sign Up", 
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
                        Text("I am a member!",
                        style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                        Text(" "),
              
                        GestureDetector(
                          onTap: widget.showLoginPage,
                          child: Text("Login.",
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