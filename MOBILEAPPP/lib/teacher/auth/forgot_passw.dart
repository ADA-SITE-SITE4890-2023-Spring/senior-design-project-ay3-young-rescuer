import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'otp_recover.dart';
class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  ForgotPasswordState createState() => ForgotPasswordState();
}

class ForgotPasswordState extends State<ForgotPassword> {
  final _forgotpasswordform = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
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
            key:_forgotpasswordform,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                SizedBox(height: 15),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller:emailcontroller,
                  decoration: InputDecoration(
                    labelText: "Enter Email Address",
                    border:OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                  validator: (value){
                    bool emailValid=RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!);
                    if(value.isEmpty){
                      return "Enter your email address to change the password.";
                    }
                    if(!emailValid){
                      return "Enter valid email address";
                    }
                  },
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: (){
                    if(_forgotpasswordform.currentState!.validate()){
                      emailcontroller.clear();
                      //jwt
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Verification()
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