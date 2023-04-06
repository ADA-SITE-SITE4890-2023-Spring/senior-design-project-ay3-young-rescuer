import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youngrescuer/student/auth/secretword.dart';

import 'package:youngrescuer/student/auth/student_fullname.dart';
import 'package:youngrescuer/student/auth/student_login.dart';
import 'package:youngrescuer/student/auth/student_registration.dart';



class Classcode extends StatefulWidget {
  const Classcode({Key? key}) : super(key: key);

  @override
  _ClasscodeState createState() => _ClasscodeState();
}

class _ClasscodeState extends State<Classcode> {
  final _classcodeform = GlobalKey<FormState>();
  final classcodecontroller = TextEditingController();



  // bool isValidEmail(String email) {
  //   final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  //   return emailRegex.hasMatch(email);
  // }
  //
  // bool isValidPassword(String password) {
  //   // Password must be at least 6 characters long
  //   if (password.length < 6) {
  //     return false;
  //   }
  //
  //   // Password can contain any combination of letters, numbers, and symbols
  //   RegExp passwordRegExp = RegExp(r'^[\w@\-#\$%^&+=]+$');
  //   if (!passwordRegExp.hasMatch(password)) {
  //     return false;
  //   }
  //
  //   // Password is valid
  //   return true;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Enter Classroom",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFFF79B26),
        centerTitle: true,
      ),

      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
          child: Form(
            key:_classcodeform,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 15),
                Text(
                  "Ask your teacher to get Classroom Code",
                  style: TextStyle(
                    color:Color(0xFFF79B26),
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller:classcodecontroller,
                  decoration: InputDecoration(
                    labelText: "Enter Classcode",
                    border:OutlineInputBorder(),
                    prefixIcon: Icon(Icons.school_rounded),
                  ),
                  validator: (value){
                    if(value!.isEmpty || classcodecontroller.text.length!=8){
                      return "Enter valid Classcode\nAsk your teacher to get valid code of the class.";
                    }
                  },
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: (){
                    if(_classcodeform.currentState!.validate()){

                      //jwt
                      classcodecontroller.clear();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StudentFullName()
                          // builder: (context) => StudentLogin()
                        ),
                      );
                    }
                  },
                  child: Container(
                    height:50,
                    decoration: BoxDecoration(
                      color: Color(0xFFF79B26),
                      borderRadius: BorderRadius.circular(5),

                    ),
                    child: Center(
                      child:Text("Enter Class", style: TextStyle(
                        color:Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
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