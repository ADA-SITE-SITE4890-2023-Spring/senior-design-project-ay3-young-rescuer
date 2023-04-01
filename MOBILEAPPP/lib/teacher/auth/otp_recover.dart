import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'repair_passw.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  VerificationState createState() => VerificationState();
}


class VerificationState extends State<Verification>{
  final _verificationform = GlobalKey<FormState>();
  final verificationcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Forgot Password",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Color(0xFF8296FF),
          centerTitle: true,
        ),

      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
          child: Form(
            key:_verificationform,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                SizedBox(height: 15),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller:verificationcontroller,
                  decoration: InputDecoration(
                    labelText: "Enter Confirmation Code",
                    border:OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                  ),
                  validator: (value){
                    bool numberValid = RegExp(r"^[0-9]+$").hasMatch(value!);
                    if(value.isEmpty){
                      return "Do not leave it blank";
                    }
                    if(!numberValid){
                      return "The given number is invalid. Type only digits";
                    }
                    if(verificationcontroller.text.length !=6){
                      return "The given code contains 6 digits, not ${verificationcontroller.text.length}";
                    }
                  },
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: (){
                    if(_verificationform.currentState!.validate()){
                      verificationcontroller.clear();
                      //jwt
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RepairPassword()
                        ),
                      );
                    }
                  },
                  child: Container(
                    height:50,
                    decoration: BoxDecoration(
                      color: Color(0xFF8296FF),
                      borderRadius: BorderRadius.circular(5),

                    ),
                    child: Center(
                      child:Text("Next", style: TextStyle(
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