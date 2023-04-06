import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youngrescuer/student/auth/student_login.dart';


class OTPcode extends StatefulWidget {
  const OTPcode({Key? key}) : super(key: key);

  @override
  OTPcodeState createState() => OTPcodeState();
}


class OTPcodeState extends State<OTPcode>{
  final _otpform = GlobalKey<FormState>();
  final otpcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Confirmation Code",
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
            key:_otpform,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                SizedBox(height: 15),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller:otpcontroller,
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
                    if(otpcontroller.text.length !=6){
                      return "The given code contains 6 digits, not ${otpcontroller.text.length}";
                    }
                  },
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: (){
                    if(_otpform.currentState!.validate()){
                      otpcontroller.clear();
                      //jwt
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StudentLogin()
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
                      child:Text("Confirm", style: TextStyle(
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