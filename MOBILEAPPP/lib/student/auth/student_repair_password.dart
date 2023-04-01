import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youngrescuer/student/auth/student_login.dart';
class RepairPassword extends StatefulWidget {
  const RepairPassword({Key? key}) : super(key: key);

  @override
  RepairPasswordState createState() => RepairPasswordState();

}

class RepairPasswordState extends State<RepairPassword> {
  final _repairform = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();
  bool passToggle=true;
  static bool similarity(String s1, String s2){
    if (s1==s2) return true;
    else return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Repair Password",
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
            key:_repairform,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                SizedBox(height: 15),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller:passwordController,
                  obscureText: passToggle,
                  decoration: InputDecoration(
                    labelText: "Enter new password",
                    border:OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock_reset),
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
                    if(passwordController.text.length!=8){
                      return "Password length should be at least 8 character";
                    }

                  },
                ),

                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller:confirmController,
                  obscureText: passToggle,
                  decoration: InputDecoration(
                    labelText: "Confirm password",
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
                      return "Confirm password";
                    }
                    if(passwordController.text.length!=8){
                      return "Password length should be at least 8 character";
                    }
                    if(!RepairPasswordState.similarity(passwordController.text, confirmController.text)){
                      return "Password do not matches";
                    }

                  },
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: (){
                    if(_repairform.currentState!.validate()){

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StudentLogin()
                        ),
                      );

                      //jwt
                      confirmController.clear();
                      passwordController.clear();
                    }
                  },
                  child: Container(
                    height:50,
                    decoration: BoxDecoration(
                      color: Color(0xFFF79B26),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child:Text("Change Password", style: TextStyle(
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