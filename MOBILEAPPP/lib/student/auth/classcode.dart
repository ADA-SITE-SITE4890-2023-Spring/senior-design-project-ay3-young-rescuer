import 'package:flutter/material.dart';
import 'package:youngrescuer/student/auth/student_login.dart';



class Classcode extends StatefulWidget {
  const Classcode({Key? key}) : super(key: key);

  @override
  ClasscodeState createState() => ClasscodeState();
}

class ClasscodeState extends State<Classcode> {
  final _classcodeform = GlobalKey<FormState>();
  final classcodecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Enter Classroom",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFFF79B26),
        centerTitle: true,
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
          child: Form(
            key:_classcodeform,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 15),
                const Text(
                  "Ask your teacher to get Classroom Code",
                  style: TextStyle(
                    color:Color(0xFFF79B26),
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller:classcodecontroller,
                  decoration: const InputDecoration(
                    labelText: "Enter Classcode",
                    border:OutlineInputBorder(),
                    prefixIcon: Icon(Icons.school_rounded),
                  ),
                  validator: (value){
                    if(value!.isEmpty || classcodecontroller.text.length!=8){
                      return "Enter valid Classcode\nAsk your teacher to get valid code of the class.";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: (){
                    if(_classcodeform.currentState!.validate()){

                      //jwt
                      classcodecontroller.clear();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            // builder: (context) => StudentFullName()
                          builder: (context) => const StudentLogin()
                        ),
                      );
                    }
                  },
                  child: Container(
                    height:50,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF79B26),
                      borderRadius: BorderRadius.circular(5),

                    ),
                    child: const Center(
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