import 'package:flutter/material.dart';
import 'package:youngrescuer/student/dashboard/classroom_info.dart';
import 'package:youngrescuer/student/dashboard/classroom_leaderboard.dart';
import 'package:youngrescuer/student/dashboard/task.dart';
// import 'news.dart';
// import 'classroom.dart';

class Classroom extends StatefulWidget {
  const Classroom({Key? key}) : super(key: key);

  @override
  ClassroomState createState() => ClassroomState();
}

class ClassroomState extends State<Classroom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Class 4b",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFFF79B26),
        centerTitle: true,

      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0), //
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Tasks()
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal:24.0, vertical: 20.0),
                        backgroundColor: const Color(0xFFF79B26),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.home,size: 30.0,color:Colors.white),
                        SizedBox(height: 8.0),
                        Text('Tasks', style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ClassroomLeaderboard()
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal:10.0, vertical: 20.0),
                        backgroundColor: const Color(0xFFF79B26)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.home,size: 30.0,color: Colors.white),
                        SizedBox(height: 8.0),
                        Text('Leaderboard', style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ClassroomInfo()
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal:33.0, vertical: 20.0),
                        backgroundColor: const Color(0xFFF79B26)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.home,size: 30.0,color: Colors.white),
                        SizedBox(height: 8.0),
                        Text('Info', style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}