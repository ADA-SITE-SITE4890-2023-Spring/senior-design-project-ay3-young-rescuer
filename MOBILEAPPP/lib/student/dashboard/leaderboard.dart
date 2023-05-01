import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'student.dart';
class Leaderboard extends StatefulWidget {
  const Leaderboard({super.key});

  @override
  LeaderboardState createState() => LeaderboardState();
}

class LeaderboardState extends State<Leaderboard> {
  List<Student> _students = [
  //   Student.fromJson(
  //     {
  //       'name':'Elchin Salahzada',
  //       'id':20,
  //       'score':50
  //     },
  // ),
  ];

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
          "Leaderboard based on School",
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