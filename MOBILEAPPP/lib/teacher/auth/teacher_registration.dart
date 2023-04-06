
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


import 'package:date_field/date_field.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:youngrescuer/privacyPolicy.dart';
import 'package:youngrescuer/termsOfService.dart';

import 'otp_signup.dart';

class TeacherRegistration extends StatefulWidget {
  const TeacherRegistration({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TeacherRegistrationState createState() => _TeacherRegistrationState();
}

class _TeacherRegistrationState extends State<TeacherRegistration> {
  var isChecked = false;
  final _registerForm = GlobalKey<FormState>();
  List<String> schools = [
    "Teacher 1",
    "Teacher 2",
    "Teacher 3",
    "Teacher 4",
    "Teacher 5",
    "Teacher 6",
    "Teacher 7",
    "Teacher 8",
    "Teacher 9",
    "Teacher 10",
  ];
  GlobalKey<AutoCompleteTextFieldState<String>> schoolkey = GlobalKey();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController schoolController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();

  bool passToggle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Create Account",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color(0xFF8296FF),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: _registerForm,
              child: Column(children: [
                const SizedBox(height: 15),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: "Enter Your name",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                  validator: (value) {
                    bool namevalid = RegExp(r'^[a-zA-Z ]+$').hasMatch(value!);
                    if (value.isEmpty) {
                      return "Add your first name";
                    }
                    if (nameController.text.contains(" ")) {
                      return "Do not leave space";
                    }
                    if (!namevalid) {
                      return "Use only letters";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: surnameController,
                  decoration: const InputDecoration(
                    labelText: "Enter Your surname",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                  validator: (value) {
                    bool namevalid = RegExp(r'^[a-zA-Z ]+$').hasMatch(value!);
                    if (value.isEmpty) {
                      return "Add your last name";
                    }
                    if (surnameController.text.contains(" ")) {
                      return "Do not leave space";
                    }
                    if (!namevalid) {
                      return "Use only letters";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                DateTimeFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.event_note),
                    labelText: 'Date of Birth',
                  ),
                  mode: DateTimeFieldPickerMode.date,
                  autovalidateMode: AutovalidateMode.always,
                ),
                const SizedBox(height: 15),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: phoneController,
                  decoration: const InputDecoration(
                    labelText: "Enter Phone Number",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone),
                  ),
                  validator: (value) {
                    bool numberValid = RegExp(r"^[0-9]+$").hasMatch(value!);
                    if (value.isEmpty) {
                      return "Add your personal phone number";
                    }
                    if (!numberValid) {
                      return "The given number is invalid. Type only digits";
                    }
                    if (phoneController.text.length != 10) {
                      return "Insert Valid Phone Number";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                AutoCompleteTextField<String>(
                  key: schoolkey,
                  clearOnSubmit: false,
                  suggestions: schools,
                  itemFilter: (i, que) {
                    return i.toLowerCase().startsWith(que.toLowerCase());
                  },
                  itemSorter: (x, y) {
                    return x.compareTo(y);
                  },
                  itemSubmitted: (i) {
                    setState(() {
                      schoolController.text = i;
                    });
                  },
                  itemBuilder: (c, i) {
                    return ListTile(
                      title: Text(i),
                    );
                  },
                  controller: schoolController,
                  decoration: const InputDecoration(
                    hintText: "Enter School Name",
                    prefixIcon: Icon(Icons.school),
                    border: OutlineInputBorder(),
                  ),
                  // validator: (value) {
                  //   bool numberValid = RegExp(r"^[0-9]+$").hasMatch(value!);
                  //   if (value.isEmpty) {
                  //     return "Add your personal phone number";
                  //   }
                  //   if (!numberValid) {
                  //     return "The given number is invalid. Type only digits";
                  //   }
                  //   if (phoneController.text.length != 10) {
                  //     return "Insert Valid Phone Number";
                  //   }
                  //   return null;
                  // },
                ),
                const SizedBox(height: 15),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: "Enter email address",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                  validator: (value) {
                    bool emailValid = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value!);
                    if (value.isEmpty) {
                      return "Enter an email address";
                    }
                    if (!emailValid) {
                      return "Enter valid email address";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordController,
                  obscureText: passToggle,
                  decoration: InputDecoration(
                    labelText: "Enter password",
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.lock_open),
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          passToggle = !passToggle;
                        });
                      },
                      child: Icon(
                          passToggle ? Icons.visibility : Icons.visibility_off),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter password";
                    }
                    if (passwordController.text.length < 8) {
                      return "Password length cannot be less than 8 character";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: confirmController,
                  obscureText: passToggle,
                  decoration: InputDecoration(
                    labelText: "Confirm password",
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.lock),
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          passToggle = !passToggle;
                        });
                      },
                      child: Icon(
                          passToggle ? Icons.visibility : Icons.visibility_off),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Repeat password";
                    }
                    if (passwordController.text.length < 8) {
                      return "Password length cannot be less than 8 character";
                    }
                    if (passwordController.text != confirmController.text) {
                      return "Password did not match";
                    }


                    return null;
                  },
                ),
                const SizedBox(height: 15),
                      RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(text: 'By registering, I am agreeing with ',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                             TextSpan(
                              text: 'Terms Of Service',
                              style: const TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color(0xFF8296FF),
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const TermsOfService()),
                                  );
                                },
                            ),
                            const TextSpan(text: ' and ',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: const TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color(0xFF8296FF),
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const PrivacyPolicy()),
                                  );
                                },
                            ),

                            const TextSpan(
                              text: ' of Young Rescuer community.',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                const SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    Text(isChecked
                        ? ""
                        : "Please agree with sharing data to create account");
                    if (_registerForm.currentState!.validate() && isChecked) {
                      emailController.clear();
                      passwordController.clear();
                      confirmController.clear();
                      phoneController.clear();
                      dateController.clear();
                      nameController.clear();
                      schoolController.clear();
                      surnameController.clear();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OTPcode()),
                      );
                      //jwt
                    }
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFF8296FF),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),

        ]
            ),
        )
          )
    ],
    )
    )
    );
  }
}
