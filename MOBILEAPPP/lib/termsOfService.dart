import 'package:flutter/material.dart';
class TermsOfService extends StatefulWidget {
  const TermsOfService({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TermsOfServiceState createState() => _TermsOfServiceState();
}

class _TermsOfServiceState extends State<TermsOfService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Terms Of Service",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color(0xFFFF4d40),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35,vertical:35),
             child: Text("")
              )
            ])));
  }
}