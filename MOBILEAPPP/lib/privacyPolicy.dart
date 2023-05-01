import 'package:flutter/material.dart';
class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Privacy Policy",
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