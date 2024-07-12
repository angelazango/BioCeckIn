import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class registerStud extends StatefulWidget {
  const registerStud({super.key});

  @override
  State<registerStud> createState() => __registerStudState();
}



class __registerStudState extends State<registerStud> {

final _nameController = TextEditingController();
  final _matriculationController = TextEditingController();
  final _institutionalEmailController = TextEditingController();
  final _alternativeEmailController = TextEditingController();
  String _selectedFaculty = 'Faculty';
  String _selectedDepartment = 'Department';
  String _selectedLevel = 'Level';
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _obscuredText= true;
  final _passwordVisible= 'passwordVisible' ;
  bool _obscureText=true;
  



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
 body  : Container(
  
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue,
              Colors.green,
              Colors.white,
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
                Text('Welcome to', style:
                 TextStyle(fontSize:
                  19,fontWeight:FontWeight.bold
                  ),),
                Image.asset('assets/print2.png', width: 125, height: 125),
                SizedBox(height: 6.0),
                Text('Please Enter Your Personal Details to Create an Account ', 
                style: TextStyle(fontSize: 
                19,
                 fontWeight:
                  FontWeight.bold,
                   color: Colors.black)),
                SizedBox(height: 4.0),
                Container(
                  padding: EdgeInsets.all(35.0),
                 // decoration: BoxDecoration(
                   
                    // borderRadius: BorderRadius.circular(16.0),
                    // boxShadow: [
                    // ]
                  
                  //  ),
                  
                  child: Column( children: [
                      TextField(
                        controller: _nameController,
                        decoration:
                   InputDecoration(
                  //  border: OutlineInputBorder(),
                    hintText: 'Name' ,  
                    
                   ),
                  
                   ),
                  // SizedBox(height: 16.0),
                     TextField(
                      controller: _matriculationController,
                      decoration:
                     
                   InputDecoration(
                   // border: OutlineInputBorder(),
                    hintText: 'Matriculation Number' ,  
                    
                   ),

                   ),
                    TextField(
                      controller: _institutionalEmailController,
                      decoration:
                   InputDecoration(
                   // border: OutlineInputBorder(),
                    hintText: 'Institutional E-mail' ,  
                    
                    ),

                   ),
                    TextField(
                      controller: _alternativeEmailController,
                      decoration:
                   InputDecoration(
                    //border: OutlineInputBorder(),
                    hintText: 'Altenative E-mail' ,  
                    
                   ),

                   ),
                   TextField(

                    obscureText: _obscureText,
                      controller: _passwordController,
                     // obscureText: true,
                      decoration:
                   InputDecoration(
                   // border: OutlineInputBorder(),
                    hintText: 'Password' ,  
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

                   )
                   ),
                  
              
                   TextField(
                    obscureText : _obscureText,
                      controller: _confirmPasswordController,
                     
                      decoration:
                   InputDecoration(
                  //  border: OutlineInputBorder(),
                    hintText: 'Confirm Password' ,  
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
                    
                   ),

                   ),
                   // SizedBox(height: 16.0),
                      DropdownButtonFormField<String>(
                        value: _selectedFaculty,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedFaculty = newValue ?? 'Faculty';
                          });
                        },
                        items: <String>[  'Faculty','FHS' ,'Science', 'Engineering', 'Arts']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        decoration: InputDecoration(
                          hintText: 'Faculty',
                         // border: OutlineInputBorder(),
                        ),
                      ),

                    //  SizedBox(height: 16.0),
                      DropdownButtonFormField<String>(
                        value: _selectedDepartment,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedDepartment = newValue ?? 'Department';
                          });
                        },
                        items: <String>['Department', 'Computer Science', 'Electrical Engineering', 'Biology']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        decoration: InputDecoration(
                          hintText: 'Department',
                        //  border: OutlineInputBorder(),
                        ),
                      ),
                    //  SizedBox(height: 16.0),
                      DropdownButtonFormField<String>(
                        value: _selectedLevel,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedLevel = newValue ?? 'Level';
                          });
                        },
                        items: <String>['Level', 'Undergraduate', 'Postgraduate', 'PhD']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        decoration: InputDecoration(
                          hintText: 'Level',
                         // border: OutlineInputBorder(),
                        ),
                      ),



                  
                
                  
                  

                  ],
                  
               
                  ),
              
                 
                  ),
                    SizedBox(height: 24.0),
                      ElevatedButton(
                        onPressed: () {
                          // Implement create account logic here
                        },
                        child: Text('CREATE ACCOUNT'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white, backgroundColor: Colors.green,
                          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                          shape: RoundedRectangleBorder(
                           // borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),


                  
                  
   
            )
              ]
                  
                  )
                
                 
                   ),        
                  
          
    
)
)
); 
  }
}

