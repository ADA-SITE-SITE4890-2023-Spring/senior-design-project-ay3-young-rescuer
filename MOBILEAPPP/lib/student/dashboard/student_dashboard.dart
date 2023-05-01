import 'package:flutter/material.dart';
import 'package:youngrescuer/student/dashboard/classroom.dart';
import 'package:youngrescuer/student/dashboard/dashboard_info.dart';
import 'package:youngrescuer/student/dashboard/leaderboard.dart';
import 'package:youngrescuer/student/dashboard/news.dart';
import 'package:youngrescuer/student/dashboard/settingsIS.dart';
import 'package:youngrescuer/student/dashboard/settings_self.dart';
// import 'news.dart';
// import 'classroom.dart';

class StudentDashboard extends StatefulWidget {
  const StudentDashboard({Key? key}) : super(key: key);

  @override
  StudentDashboardState createState() => StudentDashboardState();
}

class StudentDashboardState extends State<StudentDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dashboard",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFFF79B26),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
    child: Padding(
    padding: const EdgeInsets.all(16.0), //
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'News',
              style: TextStyle(
                color: Color(0xFFF79B26),
                fontSize: 23.0,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=> NewsPage()),);
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: const BorderSide(
                        color: Colors.black26,
                        width: 1,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100.0, vertical: 30.0),
                      textStyle: const TextStyle(),
                    ),
                    child: Row(
                      // mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text('News'),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  OutlinedButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder:(context)=> ClassRoom()),);
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: const BorderSide(
                        color: Colors.black26,
                        width: 1,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100.0, vertical: 30.0),
                      textStyle: const TextStyle(),
                    ),
                    child: Row(
                      // mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text('News'),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  OutlinedButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder:(context)=> ClassRoom()),);
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: const BorderSide(
                        color: Colors.black26,
                        width: 1,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100.0, vertical: 30.0),
                      textStyle: const TextStyle(),
                    ),
                    child: Row(
                      // mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text('News'),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  OutlinedButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder:(context)=> ClassRoom()),);
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: const BorderSide(
                        color: Colors.black26,
                        width: 1,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100.0, vertical: 30.0),
                      textStyle: const TextStyle(),
                    ),
                    child: Row(
                      // mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text('News'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Classroom()
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal:15.0, vertical: 20.0),
                      backgroundColor: const Color(0xFFF79B26)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.home,size: 30.0,color: Colors.white),
                      SizedBox(height: 8.0),
                      Text('Class 4B', style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
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
                          builder: (context) => Leaderboard()
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
                          color: Colors.white,
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
                          // builder: (context) => const StudentSettingsIS()
                          builder: (context) => const StudentSettingsN()
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal:15.0, vertical: 20.0),
                      backgroundColor: const Color(0xFFF79B26)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.home,size: 30.0,color: Colors.white),
                      SizedBox(height: 8.0),
                      Text('Settings', style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white
                      ),),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DashboardInfo()
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal:48.0, vertical: 20.0),
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
            )
          ],
        ),
    ),
      ),
    );
  }
}