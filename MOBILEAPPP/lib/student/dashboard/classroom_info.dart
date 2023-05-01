import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'student.dart';
class ClassroomInfo extends StatefulWidget {
  const ClassroomInfo({super.key});

  @override
  ClassroomInfoState createState() => ClassroomInfoState();
}

class ClassroomInfoState extends State<ClassroomInfo> {
  late Classroom classr= new Classroom(
      auth_type: "image",
      name: "Elcin",
      id: 10,
      created_by: "Salajjzada",
     );
  // @override
  // void initState() {
  //   super.initState();
  //   _getStudents();
  // }
  //
  // void _getStudents() async {
  //   var url = 'https://your-django-backend-url.com/api/students/';
  //   var response = await http.get(Uri.parse(url));
  //   if (response.statusCode == 200) {
  //     var data = json.decode(response.body) as List;
  //     setState(() {
  //       _students = data.map((student) => Student.fromJson(student)).toList();
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: const Text(
            "Settings",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color(0xFFF79B26),
          centerTitle: true,

        ),
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ID: ${classr.id}',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Classroom Name: ${classr.name}',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Created_by: ${classr.created_by}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 16),
              Text(
                'Authentication Type: ${classr.auth_type}',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        )
    );
  }
}