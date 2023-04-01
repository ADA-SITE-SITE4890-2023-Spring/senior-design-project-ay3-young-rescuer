import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Classroom extends StatefulWidget {
  const Classroom({Key? key}) : super(key: key);

  @override
  _ClassroomState createState() => _ClassroomState();
}

class _ClassroomState extends State<Classroom> {
  final passwordController = TextEditingController();

  get bottomNavigationBar => null;
  //final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    const List body = [
      Icon(Icons.home),
      Icon(Icons.create),
      Icon(Icons.settings),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Classroom Name",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF8296FF),
        centerTitle: true,
      ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        'Tasks',
                        style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 2.0,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 20),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: OutlinedButton(
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
                              horizontal: 30, vertical: 25),
                          textStyle: const TextStyle(),
                        ),
                        child: Row(
                          // mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.nature_people,
                                color: Colors.black),
                            const SizedBox(width: 20),
                            const Text('Task Name'),
                            const SizedBox(width: 20),
                            const Icon(Icons.arrow_right, color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: OutlinedButton(
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
                              horizontal: 30, vertical: 25),
                          textStyle: const TextStyle(),
                        ),
                        child: Row(
                          // mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.nature_people,
                                color: Colors.black),
                            const SizedBox(width: 20),
                            const Text('Task Name'),
                            const SizedBox(width: 20),
                            const Icon(Icons.arrow_right, color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: OutlinedButton(
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
                              horizontal: 30, vertical: 25),
                          textStyle: const TextStyle(),
                        ),
                        child: Row(
                          // mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.plus_one,
                                color: Color.fromARGB(255, 255, 170, 23)),
                            const SizedBox(width: 20),
                            const Text('Add Task'),
                            const SizedBox(width: 20),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20),
                              Text(
                                'Students',
                                style: TextStyle(
                                  color: Colors.black,
                                  letterSpacing: 2.0,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: OutlinedButton(
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
                                  horizontal: 30, vertical: 25),
                              textStyle: const TextStyle(),
                            ),
                            child: Row(
                              // mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(Icons.nature_people,
                                    color: Colors.black),
                                const SizedBox(width: 20),
                                const Text('Student Name'),
                                const SizedBox(width: 20),
                                const Icon(Icons.arrow_right,
                                    color: Colors.black),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: OutlinedButton(
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
                                  horizontal: 30, vertical: 25),
                              textStyle: const TextStyle(),
                            ),
                            child: Row(
                              // mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(Icons.nature_people,
                                    color: Colors.black),
                                const SizedBox(width: 20),
                                const Text('Student Name'),
                                const SizedBox(width: 20),
                                const Icon(Icons.arrow_right,
                                    color: Colors.black),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: OutlinedButton(
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
                                  horizontal: 30, vertical: 25),
                              textStyle: const TextStyle(),
                            ),
                            child: Row(
                              // mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(Icons.plus_one,
                                    color: Color.fromARGB(255, 255, 170, 23)),
                                const SizedBox(width: 20),
                                const Text('Add Student'),
                                const SizedBox(width: 20),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20),
                              const Text(
                                'Leaderboard based on classroom',
                                style: TextStyle(
                                  color: Colors.black,
                                  letterSpacing: 2.0,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: OutlinedButton(
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
                                  horizontal: 20, vertical: 25),
                              textStyle: const TextStyle(),
                            ),
                            child: Row(
                              // mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(Icons.nature_people,
                                    color: Colors.black),
                                const SizedBox(width: 20),
                                const Text('Number, Student Name, Score'),
                                const SizedBox(width: 20),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: OutlinedButton(
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
                                  horizontal: 30, vertical: 25),
                              textStyle: const TextStyle(),
                            ),
                            child: Row(
                              // mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(Icons.account_circle,
                                    color: Colors.black),
                                const SizedBox(width: 20),
                                const Text('Student Name'),
                                const SizedBox(width: 20),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: OutlinedButton(
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
                                  horizontal: 30, vertical: 25),
                              textStyle: const TextStyle(),
                            ),
                            child: Row(
                              // mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(Icons.account_circle,
                                    color: Colors.black),
                                const SizedBox(width: 20),
                                const Text('Student Name'),
                                const SizedBox(width: 20),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: body[currentIndex],
                  ),
                  NavigationBar(
                    destinations: const [
                      NavigationDestination(
                          icon: Icon(Icons.home), label: 'Home'),
                      NavigationDestination(
                          icon: Icon(Icons.create), label: 'Create'),
                      NavigationDestination(
                          icon: Icon(Icons.settings), label: 'Settings'),
                    ],
                    selectedIndex: currentIndex,
                    onDestinationSelected: (int index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
