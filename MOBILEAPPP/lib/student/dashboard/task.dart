import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'classroom.dart';

class Tasks extends StatefulWidget {
  Tasks({Key? key}) : super(key: key);

  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tasks",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFFF79B26),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                            'Completed Tasks',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,

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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Classroom()),
                          );
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Color(0xFFF79B26),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          side: const BorderSide(
                            color: Colors.black26,
                            width: 1,
                          ),
                          padding: const EdgeInsets.only(
                              left: 20, top: 10, bottom:10),
                          textStyle: const TextStyle(),
                        ),
                        child: Row(
                          // mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Icon(Icons.nature_people, color: Colors.white),
                            SizedBox(width: 20),
                            Text('Fire Rescue',style:TextStyle(color: Colors.white, fontSize: 20.0)),
                            SizedBox(width: 145),
                            Icon(Icons.arrow_right, color: Colors.white,size:45.0),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
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
                            'Uncompleted Tasks',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Classroom()),
                          );
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Color(0xFFF79B26),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          side: const BorderSide(
                            color: Colors.black26,
                            width: 1,
                          ),
                          padding: const EdgeInsets.only(
                              left: 20, top: 10, bottom:10
                          ),
                          textStyle: const TextStyle(),
                        ),
                        child: Row(
                          // mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Icon(Icons.nature_people, color: Colors.white),
                            SizedBox(width: 20),
                            Text('Avengers',style: TextStyle(
                              color: Colors.white,
                                  fontSize: 20.0
                            )),
                            SizedBox(width: 165),
                            Icon(Icons.arrow_right, color: Colors.white,size:45.0),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}