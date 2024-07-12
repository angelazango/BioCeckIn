import 'package:flutter/material.dart';
import 'package:project/regstudent.dart';
import 'package:project/studInterface.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
       
      ),
      home: SignUpScreen(),
      routes: {

        '/register_stud':(context) => registerStud(),

   

      },
    );
  }
}

