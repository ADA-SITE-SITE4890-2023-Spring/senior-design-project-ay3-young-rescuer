import 'package:flutter/material.dart';
import '../../student/auth/classcode.dart';
import '../../teacher/auth/teacher_login.dart';

class YoungRescuer extends StatefulWidget {
  const YoungRescuer({Key? key}) : super(key: key);

  @override
  YoungRescuerState createState() => YoungRescuerState();
}

class YoungRescuerState extends State<YoungRescuer> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Young Rescuer",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color(0xFFF79B26),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Classcode()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFA800),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: const BorderSide(
                    color: Color(0xFFF79B26),
                    width: 1,
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40, vertical: 25),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.school, color: Colors.white, size: 30),
                    SizedBox(width: 8),
                    Text(
                      'I am student',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: const Color(0xFF8296FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: const BorderSide(
                    color: Color(0xFF8296FF),
                    width: 1,
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40, vertical: 25),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.nature_people,
                        color: Colors.white, size: 30),
                    SizedBox(width: 8),
                    Text(
                      'I am teacher',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ])));
  }
}
