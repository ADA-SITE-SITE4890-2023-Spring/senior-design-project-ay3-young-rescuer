import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'forgot_passw.dart';
import 'teacher_registration.dart';

import 'package:youngrescuer/teacher/dashboard/teacher_dashboard.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _loginForm = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  bool passToggle=true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Teacher Login",
          style: TextStyle(
          color: Colors.white,
        ),
        ),
        backgroundColor: Color(0xFF8296FF),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
            child: Form(
              key:_loginForm,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image.asset("images/youngrescuer.png", height: 200, width: 200),
            SizedBox(height: 15),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            controller:emailController,
          decoration: InputDecoration(
            labelText: "Enter email address",
            border:OutlineInputBorder(),
            prefixIcon: Icon(Icons.email),
          ),
            validator: (value){
              bool emailValid=RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!);
              if(value.isEmpty){
                return "Enter an email address";
              }
              if(!emailValid){
                return "Enter valid email address";
              }

            },
          ),
            SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller:passwordController,
              obscureText: passToggle,
              decoration: InputDecoration(
                labelText: "Enter password",
                border:OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
                suffix: InkWell(
                  onTap:(){
                    setState(() {
                      passToggle = !passToggle;
                    });
                  },
                  child: Icon(passToggle ? Icons.visibility : Icons.visibility_off),
                ),
              ),
              validator:(value){
                if(value!.isEmpty){
                  return "Enter password";
                }
                if(passwordController.text.length<8){
                  return "Password length cannot be less than 8 character";
                }

              },
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: (){
                if(_loginForm.currentState!.validate()){
                  emailController.clear();
                  passwordController.clear();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TeacherDashboard()
                    ),
                  );
               //jwt
                }

              },
              child: Container(
                height:50,
                decoration: BoxDecoration(
                  color: Color(0xFF8296FF),
                  borderRadius: BorderRadius.circular(5),

                ),
                child: Center(
                  child:Text("Log in", style: TextStyle(
                    color:Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ),
            ),
            SizedBox(height:15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Do not have an account?", style: TextStyle(
                  fontSize: 16,
                ),
                ),
                TextButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => TeacherRegistration()
                  ),
                  );
                }, child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                ),),
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Forgot Passwoard?", style: TextStyle(
                  fontSize: 16,
                ),
                ),
                TextButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForgotPassword()
                    ),
                  );
                }, child: Text(
                  "Change Password",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),),
              ],)
        ],
      ),
    ),
        ),
    ),
    );
  }
}