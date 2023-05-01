import 'package:flutter/material.dart';
import 'package:youngrescuer/student/dashboard/task.dart';
// import 'news.dart';
// import 'classroom.dart';

class DashboardInfo extends StatefulWidget {
  const DashboardInfo({Key? key}) : super(key: key);

  @override
  DashboardInfoState createState() => DashboardInfoState();
}

class DashboardInfoState extends State<DashboardInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Info",
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
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal:10.0, vertical: 20.0),
                      backgroundColor: const Color(0xFFF79B26),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('30', style: TextStyle(
                            fontSize: 45.0,
                            color: Colors.white
                        ),
                        ),
                        SizedBox(height: 8.0),
                        Text('Total Answers', style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white
                        ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal:30.0, vertical: 20.0),
                        backgroundColor: const Color(0xFFF79B26)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('30', style: TextStyle(
                            fontSize: 45.0,
                            color: Colors.white
                        ),
                        ),
                        SizedBox(height: 8.0),
                        Text('Correct', style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white
                        ),),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: () {},
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
                        Text('30', style: TextStyle(
                            fontSize: 45.0,
                            color: Colors.white
                        ),
                        ),
                        SizedBox(height: 8.0),
                        Text('False', style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}