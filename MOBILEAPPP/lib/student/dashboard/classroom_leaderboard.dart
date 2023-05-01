import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'student.dart';
class ClassroomLeaderboard extends StatefulWidget {
  const ClassroomLeaderboard({super.key});

  @override
  ClassroomLeaderboardState createState() => ClassroomLeaderboardState();
}

class ClassroomLeaderboardState extends State<ClassroomLeaderboard> {
  List<Student> _students = [
  //   Student.fromJson(
  //     {
  //       'name':'Elchin Salahzada',
  //       'id':20,
  //       'score':50
  //     },
  // ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Leaderboard based on Classroom",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFFF79B26),
        centerTitle: true,

      ),
      body: ListView.builder(
        itemCount: _students.length,
        itemBuilder: (context, index) {
          if (index.isOdd) {
            return const Divider();
          } else {
            var studentIndex = index ~/ 2;
            var student = _students[studentIndex];
            return ListTile(
              title: Text(student.name),
              subtitle: Text('ID: ${student.id}'),
              // trailing: Text('${student.score}'),
            );
          }
        },
      ),
    );
  }
}