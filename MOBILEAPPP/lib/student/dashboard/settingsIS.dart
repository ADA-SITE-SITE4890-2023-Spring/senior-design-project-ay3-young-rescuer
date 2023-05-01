import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'student.dart';
class StudentSettingsIS extends StatefulWidget {
  const StudentSettingsIS({super.key});

  @override
  StudentSettingsISState createState() => StudentSettingsISState();
}

class StudentSettingsISState extends State<StudentSettingsIS> {
  late Student student = new Student(
      login_type: "image",
      age: 15,
      email: "esalahzada@gmail.com",
      secret_word: "elcin",
      icon: "icon1", school: "20 nomre",
      classroom: "class5v",
      class_number: "class4b",
      emergency_contact: "0552552525",
      emergency_confirmed: true,
      name: "Elcin",
      id: 10,
      surname: "Salajjzada",
      father_name: "Qurban");

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
            'Name: ${student.name} ${student.surname}',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Father Name: ${student.father_name}',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 16),
          Text(
            'Age: ${student.age}',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 16),
          Text(
            'Classroom Name: ${student.classroom}',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 16),
          Text(
            'Emergency Contact Number: ${student.emergency_contact}',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 16),
          Text(
            'LoginType: ${student.emergency_confirmed}',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    )
    );
  }
}