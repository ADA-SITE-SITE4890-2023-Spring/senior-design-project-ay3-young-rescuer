import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'student_fullname.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youngrescuer/student/auth/secretword.dart';

import 'package:youngrescuer/student/auth/student_fullname.dart';
import 'package:youngrescuer/student/auth/student_registration.dart';



class SecretWord extends StatefulWidget {
  const SecretWord({Key? key}) : super(key: key);

  @override
  SecretWordState createState() => SecretWordState();
}

class SecretWordState extends State<SecretWord> {
  final _secretwordform = GlobalKey<FormState>();
  final secretwordcontroller = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Secret Word",
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
            key:_secretwordform,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 15),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller:secretwordcontroller,
                  decoration: InputDecoration(
                    labelText: "Enter Your Secret Word",
                    border:OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password_sharp),
                  ),
                  validator: (value){
                    if(value!.isEmpty || secretwordcontroller.text.length<8){
                      return "Enter your secret word.\nAsk your teacher to get your secret word.";
                    }
                  },
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: (){
                    if(_secretwordform.currentState!.validate()){
                      //jwt
                      secretwordcontroller.clear();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecretWord()
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