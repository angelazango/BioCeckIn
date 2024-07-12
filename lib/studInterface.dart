

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import 'package:http/http.dart' as http;
import 'package:project/forgetp.dart';
import 'dart:convert';
import 'regstudent.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  
 // const _obscuredText=true;
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
bool _obscureText=true;
  final _formKey = GlobalKey<FormState>();
  String _matriculationNumber = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,

            colors: [

              Colors.blueGrey ,
              Colors.white ,
              Colors.green ,
            ],
          ),

        ),
        child: Padding(
          padding: EdgeInsets.all(23.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 77.0),
                
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/girl.jpeg'),
                    ),
                  ),
                ),
                SizedBox(height: 9.0),
                Text('Sign as a Student', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black)),
                SizedBox(height: 48.0),
                // Container(
                //   padding: EdgeInsets.all(40.0),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(600.0),
                //     boxShadow: [],
                //   ),
                // ),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter your matriculation number',
                          labelText: 'Matriculation Number',
                          hintStyle: TextStyle(color: Colors.black26),
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your matriculation number';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _matriculationNumber = value!;
                        },
                        style: TextStyle(color: Colors. black),
                      ),
                      SizedBox(height: 16.0),

                     
                      TextFormField(
                        obscureText: _obscureText,
                
                        decoration: InputDecoration(

                          hintText: 'Enter your password',
                          labelText: 'Password',
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureText= !_obscureText;
                              });
                            },
                            child: Icon(
                              _obscureText ? Icons.visibility_off : Icons.visibility,
                         
                            
                            ),
                            

                          ),

                          hintStyle: TextStyle(color: Colors.black),
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                        validator: (value) {
                          if (value!.isEmpty || value.length < 8) {
                            return 'Password must be at least 8 characters';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _password = value!;
                        },
                        
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(height: 16.0),
                      Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => ForgetPasswordScreen(),
                            ),
                            );
                           
                          },
                          child: Text(
                            'Forget Password?',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                      SizedBox(height: 32.0),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            // Perform sign-in logic here
                            print('Matriculation Number: $_matriculationNumber');
                            print('Password: $_password');
                          }
                        },
                        child:
                         Text('Sign In' 
                        ),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.green,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Align(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed: () {
                           Navigator.push(context,
                           MaterialPageRoute(builder: (context) => registerStud()),
                            );
                            
                          },
                          child: Text(
                            'Don\'t have an account? Register',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: TextButton(
                          onPressed: () {
                            // Navigator.push(context, 
                            // MaterialPageRoute(builder: (context ) => teacher Screen))
                            
                          },
                          child: Text(
                            'Are you a teacher? click here ',
                            style: TextStyle(color: Colors.black),
                            
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}