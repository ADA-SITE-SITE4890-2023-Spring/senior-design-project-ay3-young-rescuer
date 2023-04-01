import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youngrescuer/student/auth/secretword.dart';
import 'image_registration.dart';
import 'classcode.dart';
class StudentFullName extends StatefulWidget {
  const StudentFullName({Key? key}) : super(key: key);

  @override
  StudentState createState() => StudentState();
}
class Student{
  static String selectedFullName = 'Gunay Ramazanova';
  String get fullname => selectedFullName;
  void set fullname(String value) {
    selectedFullName = value;
  }
}
class StudentState extends State<StudentFullName> {
  Student s = new Student();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Choose your name",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFFF79B26),
        centerTitle: true,
      ),

      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Color(0xFF8296FF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropdownButtonFormField<String>(
                    dropdownColor:Color(0xFF8296FF),
                    value: Student.selectedFullName,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.man, color: Colors.white),
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        Student.selectedFullName = newValue!;
                      });
                    },
                    items: <String>[
                      'Gunay Ramazanova',
                      'Gunel Memmedli',
                      'Murad Ramazanov',
                      'Ferid Qocayev'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,style:TextStyle(color:Colors.white)),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: OutlinedButton(
                    onPressed: () {
                      //jwt
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ImageList(),
                          // builder: (context) => SecretWord()
                        ),
                      );
                      /*   Navigator.push(
                             context,
                            MaterialPageRoute(
                              builder: (context) => Registration(),
                              ),
                            );
                            Navigator.push(
                             context,
                            MaterialPageRoute(
                              builder: (context) => SecretWord(),
                              ),
                            );
                       */
                    },
                    child: Text('Next',style:TextStyle(fontSize:20,color:Colors.white)),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Color(0xFFF79B26),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: BorderSide(
                        color: Color(0xFFF79B26),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );


  }
}