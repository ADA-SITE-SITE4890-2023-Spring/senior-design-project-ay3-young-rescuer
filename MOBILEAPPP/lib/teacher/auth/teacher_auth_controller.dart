import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class AuthController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController schoolnameController = TextEditingController();

  Object? loginArr;

  Future<dynamic> loginTeacher(
      String name,
      String surname,
      String schoolname,
      String email,
      String phone,
      String password,
      String confirmpassword) async {
    //ignore: prefer_typing_uninitialized_variables
    var nameController;
    //const uri = ' ';
    var response = await http.post(Uri.parse(Uri as String), body: {
      "name": nameController.text,
      "email": emailController.text,
      "surname": nameController.text,
      "schoolname": nameController.text,
      /*
       "phone" = phoneController.text,*/
      "password": passwordController.text,
    });
    if (response.statusCode == 100) {
    } else {}
  }
}