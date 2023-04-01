import 'package:flutter/material.dart';
import '../../student/auth/classcode.dart';
import '../../teacher/auth/teacher_login.dart';
class YoungRescuer extends StatefulWidget {
  const YoungRescuer({Key? key}) : super(key: key);
  @override
  _YoungRescuerState createState() => _YoungRescuerState();
}

class _YoungRescuerState extends State<YoungRescuer> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Young Rescuer",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Color(0xFFF79B26),
          centerTitle: true,

        ),
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  ],
                ),
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: OutlinedButton(

                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Classcode()),
                                  );
                                },
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Color(0xFFFFA800),
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
                                  children: [
                                    const Icon(Icons.school,
                                        color: Colors.white,size: 30),
                                    const SizedBox(width: 8),
                                    const Text('I am student', style: TextStyle(color: Colors.white,fontSize: 20),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: OutlinedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login()),
                                  );
                                },
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Color(0xFF8296FF),
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
                                  children: [
                                    const Icon(Icons.house, color: Colors.white,
                                        size:30),
                                    const SizedBox(width: 8),
                                    const Text('I am teacher', style: TextStyle(color: Colors.white,fontSize: 20),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ])
                  ])
            ])));
  }
}
