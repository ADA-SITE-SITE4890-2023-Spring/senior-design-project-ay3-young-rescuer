import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(const MaterialApp(
      home: YoungRescuer(),
    ));

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
        backgroundColor: Colors.orangeAccent,
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Young Rescuer',
                      style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 2.0,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IndieFlower'),
                    ),
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
                                        builder: (context) => ClassRoom()),
                                  );
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
                                      horizontal: 40, vertical: 25),
                                  textStyle: const TextStyle(),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Icon(Icons.school,
                                        color: Colors.black),
                                    const SizedBox(width: 8),
                                    const Text('I am Student'),
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
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  side: const BorderSide(
                                    color: Colors.black26,
                                    width: 1,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 25),
                                  textStyle: const TextStyle(),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Icon(Icons.house,
                                        color: Colors.black),
                                    const SizedBox(width: 8),
                                    const Text('I am Teacher'),
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

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool? _isRememberMe = false;
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const YoungRescuer(),
                          ),
                        );
                      },
                      child: const Icon(Icons.arrow_back, size: 32.0),
                    ),
                  ),
                  const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                        )
                      ]),
                  height: 40,
                  child: const TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14),
                        prefixIcon: Icon(Icons.email, color: Colors.black),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.black38)),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                      )
                    ],
                  ),
                  height: 40,
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.only(left: 16, top: 14, bottom: 14),
                      prefixIcon: Icon(Icons.lock, color: Colors.black),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.black38),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  color: Colors.orangeAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Checkbox(
                        value: _isRememberMe,
                        onChanged: (bool? newValue) {
                          setState(() {
                            _isRememberMe = newValue ?? false;
                          });
                        },
                        checkColor: Colors.white,
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Remember me',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            alignment: Alignment.centerLeft,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  color: Colors.orangeAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Password()),
                            );
                          },
                          child: const Text(
                            'Forgot Password',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 15,
                            ),
                          ),
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            alignment: Alignment.centerLeft,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(height: 20),
                Center(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FirstRoom()),
                      );
                    },
                    child: const Text('Log in'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: const BorderSide(
                        color: Colors.black26,
                        width: 2,
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  color: Colors.orangeAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Teachers()),
                            );
                          },
                          child: const Text(
                            'Do not have account?',
                            textAlign: TextAlign.left,
                          ),
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Teachers extends StatefulWidget {
  const Teachers({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TeachersState createState() => _TeachersState();
}

class _TeachersState extends State<Teachers> {
  bool? _isChecked = false;
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController schoolnameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  AuthController authController = AuthController();
  //final ScrollController controller = ScrollController();
  String _selectedSchoolName = '1.nomreli';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    Container(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ),
                          );
                        },
                        child: const Icon(Icons.arrow_back, size: 32.0),
                      ),
                    ),
                    const SizedBox(height: 80),
                    const Text(
                      'Create Account',
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                        )
                      ]),
                  height: 40,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    controller: authController.nameController,
                    style: const TextStyle(color: Colors.black87),
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14),
                        prefixIcon: Icon(Icons.man, color: Colors.black),
                        hintText: "Name",
                        hintStyle: TextStyle(color: Colors.black38)),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                        )
                      ]),
                  height: 40,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    controller: authController.surnameController,
                    style: const TextStyle(color: Colors.black87),
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14),
                        prefixIcon: Icon(Icons.man, color: Colors.black),
                        hintText: "Surname",
                        hintStyle: TextStyle(color: Colors.black38)),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                      )
                    ],
                  ),
                  child: DropdownButtonFormField<String>(
                    value: _selectedSchoolName,
                    decoration: const InputDecoration(
                      labelText: 'School name',
                      prefixIcon: Icon(Icons.house),
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedSchoolName = newValue!;
                      });
                    },
                    items: <String>[
                      '1.nomreli',
                      '2.nomreli',
                      '3.nomreli',
                      '4.nomreli'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                        )
                      ]),
                  height: 40,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: authController.emailController,
                    style: const TextStyle(color: Colors.black87),
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14),
                        prefixIcon: Icon(Icons.email, color: Colors.black),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.black38)),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                        )
                      ]),
                  height: 40,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    controller: authController.phoneController,
                    style: const TextStyle(color: Colors.black87),
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14),
                        prefixIcon: Icon(Icons.phone, color: Colors.black),
                        hintText: "Phone number",
                        hintStyle: TextStyle(color: Colors.black38)),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                      )
                    ],
                  ),
                  height: 40,
                  child: TextField(
                    //controller: passwordController,
                    controller: authController.passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.only(left: 16, top: 14, bottom: 14),
                      prefixIcon: Icon(Icons.lock, color: Colors.black),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.black38),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                      )
                    ],
                  ),
                  height: 40,
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.only(left: 16, top: 14, bottom: 14),
                      prefixIcon: Icon(Icons.lock, color: Colors.black),
                      hintText: "Confirm Password",
                      hintStyle: TextStyle(color: Colors.black38),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Checkbox(
                      value: _isChecked,
                      onChanged: (bool? newValue) {
                        setState(() {
                          _isChecked = newValue ?? false;
                        });
                      },
                      //activeColor: Colors.orangeAccent,
                      checkColor: Colors.black,
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          alignment: Alignment.centerLeft,
                        ),
                        child: const Text(
                          'I agree to the Terms of User',
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Center(
                  child: OutlinedButton(
                    onPressed: () {
//authController.loginTeacher();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OtpCode(),
                        ),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: const BorderSide(
                        color: Colors.black26,
                        width: 2,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    child: const Text('Sign up'),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class editingController {}

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

Future<void> loginTeacher() async {
  // ignore: prefer_typing_uninitialized_variables
  var emailController;
  final email = emailController.text;
  // ignore: prefer_typing_uninitialized_variables
  var passwordController;
  final password = passwordController.text;

  final response = await http.post(
    Uri.parse(''),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'email': email,
      'password': password,
    }),
  );

  if (response.statusCode == 100) {
  } else {}
}

class OtpCode extends StatelessWidget {
  const OtpCode({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    Container(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Teachers(),
                            ),
                          );
                        },
                        child: Icon(Icons.arrow_back, size: 32.0),
                      ),
                    ),
                    const SizedBox(height: 80),
                    Icon(Icons.lock),
                    const SizedBox(height: 20),
                    Text(
                      'OTP Code',
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 70,
                  width: 30,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    cursorColor: Colors.deepOrange,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 30,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    cursorColor: Colors.deepOrange,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 30,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    cursorColor: Colors.deepOrange,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 30,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    cursorColor: Colors.deepOrange,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 30,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    cursorColor: Colors.deepOrange,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 30,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    cursorColor: Colors.deepOrange,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: const Text('Recover Password'),
                )
              ],
            )
          ],
        )));
  }
}

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ),
                        );
                      },
                      child: Icon(Icons.arrow_back, size: 32.0),
                    ),
                  ),
                  const SizedBox(height: 80),
                  Icon(Icons.lock),
                  const SizedBox(height: 15),
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 20,
                        )
                      ]),
                  height: 40,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14),
                        prefixIcon:
                            Icon(Icons.account_circle, color: Colors.black),
                        hintText: "Email address",
                        hintStyle: TextStyle(
                            color: Colors.black38, fontFamily: 'Italic')),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Verification()),
                      );
                    },
                    child: const Text('Recover Password'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: BorderSide(
                        color: Colors.black26,
                        width: 2,
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                      textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Italic'),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Verification extends StatelessWidget {
  const Verification({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    Container(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Password(),
                            ),
                          );
                        },
                        child: Icon(Icons.arrow_back, size: 32.0),
                      ),
                    ),
                    const SizedBox(height: 80),
                    Icon(Icons.lock),
                    const SizedBox(height: 20),
                    Text(
                      'OTP Code',
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 70,
                  width: 30,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    cursorColor: Colors.deepOrange,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 30,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    cursorColor: Colors.deepOrange,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 30,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    cursorColor: Colors.deepOrange,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 30,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    cursorColor: Colors.deepOrange,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RepairPassword()),
                    );
                  },
                  child: const Text('Recover Password'),
                )
              ],
            )
          ],
        )));
  }
}

class RepairPassword extends StatefulWidget {
  const RepairPassword({Key? key}) : super(key: key);

  @override
  _RepairPassword createState() => _RepairPassword();
}

class _RepairPassword extends State<RepairPassword> {
  final passwordController = TextEditingController();
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 80),
                    Container(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ),
                          );
                        },
                        child: const Icon(Icons.arrow_back, size: 32.0),
                      ),
                    ),
                    const SizedBox(height: 80),
                    const Icon(Icons.build),
                    const SizedBox(height: 20),
                    Text(
                      'Repair Password',
                      style: const TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                      )
                    ],
                  ),
                  height: 40,
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.only(left: 16, top: 14, bottom: 14),
                      prefixIcon: Icon(Icons.lock_open, color: Colors.black),
                      hintText: "Enter Password",
                      hintStyle: TextStyle(color: Colors.black38),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                      )
                    ],
                  ),
                  height: 40,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.only(left: 16, top: 14, bottom: 14),
                      prefixIcon: Icon(Icons.lock, color: Colors.black),
                      hintText: "Repeat Password",
                      hintStyle: TextStyle(color: Colors.black38),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    child: const Text('Repair'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: const BorderSide(
                        color: Colors.black26,
                        width: 2,
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Italic'),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FirstRoom extends StatefulWidget {
  FirstRoom({Key? key}) : super(key: key);

  @override
  _FirstRoomState createState() => _FirstRoomState();
}

class _FirstRoomState extends State<FirstRoom> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    const List body = [
      Icon(Icons.home),
      Icon(Icons.create),
      Icon(Icons.settings),
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FirstRoom(),
                    ),
                  );
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 32.0,
                ),
              ),
              SizedBox(width: 30),
              Text('Young Rescuer'),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              SizedBox(width: 20),
              Text(
                'What is news?',
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'IndieFlower'),
              ),
              SizedBox(height: 20),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewsPage()),
                            );
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
                                horizontal: 80, vertical: 80),
                            textStyle: const TextStyle(),
                          ),
                          child: Row(
                            // mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text('News'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: OutlinedButton(
                          onPressed: () {},
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
                                horizontal: 80, vertical: 80),
                            textStyle: const TextStyle(),
                          ),
                          child: Row(
                            // mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text('News'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
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
                                horizontal: 80, vertical: 80),
                            textStyle: const TextStyle(),
                          ),
                          child: Row(
                            // mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text('News'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
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
                                horizontal: 80, vertical: 80),
                            textStyle: const TextStyle(),
                          ),
                          child: Row(
                            // mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text('News'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
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
                                horizontal: 80, vertical: 80),
                            textStyle: const TextStyle(),
                          ),
                          child: Row(
                            // mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text('News'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
                              'Classrooms',
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RoomName()),
                            );
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
                            children: const [
                              Icon(Icons.nature_people, color: Colors.black),
                              SizedBox(width: 20),
                              Text('Classroom Name'),
                              SizedBox(width: 20),
                              Icon(Icons.arrow_right, color: Colors.black),
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
                              const Text('Classroom Name'),
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
                              const Text('Add Classroom'),
                              const SizedBox(width: 20),
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
                  ]),
              Center(
                child: body[currentIndex],
              ),
              NavigationBar(
                destinations: const [
                  NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
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
        ),
      ),
    );
  }
}

class NewsPage extends StatefulWidget {
  NewsPage({Key? key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    const List body = [
      Icon(Icons.home),
      Icon(Icons.create),
      Icon(Icons.settings),
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FirstRoom(),
                    ),
                  );
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 32.0,
                ),
              ),
              SizedBox(width: 30),
              Text('Young Rescuer'),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              SizedBox(width: 20),
              Text(
                'News',
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'IndieFlower'),
              ),
              SizedBox(height: 20),
              Container(
                child: OutlinedButton(
                  onPressed: () {},
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
                        horizontal: 80, vertical: 80),
                    textStyle: const TextStyle(),
                  ),
                  child: Row(
                    // mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 20),
                      const Text('News'),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20),
              Text(
                'News',
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'IndieFlower'),
              ),
              SizedBox(width: 50),
              Text(
                  '        Azərbaycan Respublikasının Prezidenti cənab İlham Əliyevin tapşırığına əsasən Türkiyə Respublikasında baş vermiş güclü zəlzələnin fəsadlarının aradan qaldırılmasına dəstək məqsədilə qardaş ölkəyə humanitar yardım aparmış Fövqəladə Hallar Nazirliyinin xüsusi təyinatlı nəqliyyat vasitələrindən ibarət ikinci avtomobil karvanı Bakı şəhərinə yola düşüb.Azərbaycan Respublikasının Prezidenti cənab İlham Əliyevin tapşırığına əsasən Türkiyə Respublikasında baş vermiş güclü zəlzələnin fəsadlarının aradan qaldırılmasına dəstək məqsədilə qardaş ölkəyə humanitar yardım aparmış Fövqəladə Hallar Nazirliyinin xüsusi təyinatlı nəqliyyat vasitələrindən ibarət ikinci avtomobil karvanı Bakı şəhərinə yola düşüb.Azərbaycan Respublikasının Prezidenti cənab İlham Əliyevin tapşırığına əsasən Türkiyə Respublikasında baş vermiş güclü zəlzələnin fəsadlarının aradan qaldırılmasına dəstək məqsədilə qardaş ölkəyə humanitar yardım aparmış Fövqəladə Hallar Nazirliyinin xüsusi təyinatlı nəqliyyat vasitələrindən ibarət ikinci avtomobil karvanı Bakı şəhərinə yola düşüb. Azərbaycan Respublikasının Prezidenti cənab İlham Əliyevin tapşırığına əsasən Türkiyə Respublikasında baş vermiş güclü zəlzələnin fəsadlarının aradan qaldırılmasına dəstək məqsədilə qardaş ölkəyə humanitar yardım aparmış Fövqəladə Hallar Nazirliyinin xüsusi təyinatlı nəqliyyat vasitələrindən ibarət ikinci avtomobil karvanı Bakı şəhərinə yola düşüb. Azərbaycan Respublikasının Prezidenti cənab İlham Əliyevin tapşırığına əsasən Türkiyə Respublikasında baş vermiş güclü zəlzələnin fəsadlarının aradan qaldırılmasına dəstək məqsədilə qardaş ölkəyə humanitar yardım aparmış Fövqəladə Hallar Nazirliyinin xüsusi təyinatlı nəqliyyat vasitələrindən ibarət ikinci avtomobil karvanı Bakı şəhərinə yola düşüb.Azərbaycan Respublikasının Prezidenti cənab İlham Əliyevin tapşırığına əsasən Türkiyə Respublikasında baş vermiş güclü zəlzələnin fəsadlarının aradan qaldırılmasına dəstək məqsədilə qardaş ölkəyə humanitar yardım aparmış Fövqəladə Hallar Nazirliyinin xüsusi təyinatlı nəqliyyat vasitələrindən ibarət ikinci avtomobil karvanı Bakı şəhərinə yola düşüb. Azərbaycan Respublikasının Prezidenti cənab İlham Əliyevin tapşırığına əsasən Türkiyə Respublikasında baş vermiş güclü zəlzələnin fəsadlarının aradan qaldırılmasına dəstək məqsədilə qardaş ölkəyə humanitar yardım aparmış FHN xüsusi təyinatlı yola düşüb.'),
              Center(
                child: body[currentIndex],
              ),
              NavigationBar(
                destinations: const [
                  NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
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
        ),
      ),
    );
  }
}

class RoomName extends StatefulWidget {
  const RoomName({Key? key}) : super(key: key);

  @override
  _RoomNameState createState() => _RoomNameState();
}

class _RoomNameState extends State<RoomName> {
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

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 32.0,
                ),
              ),
              SizedBox(width: 30),
              Text('Classroom Name'),
            ],
          ),
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
                    ]),
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
      ),
    );
  }
}

class ClassRoom extends StatelessWidget {
  const ClassRoom({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    Container(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ),
                          );
                        },
                        child: Icon(Icons.arrow_back, size: 32.0),
                      ),
                    ),
                    const SizedBox(height: 80),
                    const Icon(Icons.school, color: Colors.black),
                    Text(
                      'Classroom Code',
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 70,
                  width: 30,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    cursorColor: Colors.deepOrange,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 30,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    cursorColor: Colors.deepOrange,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 30,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    cursorColor: Colors.deepOrange,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 30,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    cursorColor: Colors.deepOrange,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 30,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    cursorColor: Colors.deepOrange,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 30,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    cursorColor: Colors.deepOrange,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const SizedBox(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Student(),
                      ),
                    );
                  },
                  child: const Text('Next'),
                )
              ],
            )
          ],
        )));
  }
}

class Student extends StatefulWidget {
  const Student({Key? key}) : super(key: key);

  @override
  _StudentState createState() => _StudentState();
}

class _StudentState extends State<Student> {
  String _selectedFullName = 'Gunay Ramazanova';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    Container(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ClassRoom(),
                            ),
                          );
                        },
                        child: Icon(Icons.arrow_back, size: 32.0),
                      ),
                    ),
                    const SizedBox(height: 80),
                    Text(
                      'Who am I?',
                      style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 2.0,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  ]),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 60),
                Text(
                  'I am',
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                      )
                    ],
                  ),
                  child: DropdownButtonFormField<String>(
                    value: _selectedFullName,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.man, color: Colors.black),
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedFullName = newValue!;
                      });
                    },
                    items: <String>[
                      'Gunay Ramazanova',
                      'Gunel Memmedli',
                      'Murad Ramazanov',
                      'Ferid Qocayev'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'and',
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Center(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ImmList(),
                        ),
                      );
                      /*   Navigator.push(
                             context,
                            MaterialPageRoute(
                              builder: (context) => Registration(),
                              ),
                            );
                            Navigator.push(
                             context,
                            MaterialPageRoute(
                              builder: (context) => SecretWord(),
                              ),
                            );
                            */
                    },
                    child: const Text('Submit'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: BorderSide(
                        color: Colors.black26,
                        width: 2,
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ImmList extends StatefulWidget {
  const ImmList({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ImmListState createState() => _ImmListState();
}

class _ImmListState extends State<ImmList> {
  ImageProvider<Object>? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      Container(
                        alignment: Alignment.topLeft,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ClassRoom(),
                              ),
                            );
                          },
                          child: const Icon(Icons.arrow_back, size: 32.0),
                        ),
                      ),
                      const SizedBox(height: 80),
                      const Text(
                        'Select Image',
                        style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                    ]),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 60),
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                        )
                      ],
                    ),
                    child: DropdownButtonFormField<ImageProvider<Object>>(
                      value: _selectedImage,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.image, color: Colors.black),
                      ),
                      onChanged: (ImageProvider<Object>? newValue) {
                        setState(() {
                          _selectedImage = newValue!;
                        });
                      },
                      items: [
                        const AssetImage('assets/images/320-annulus.png'),
                        const AssetImage('assets/images/320-circle.png'),
                        const AssetImage('assets/images/320-cube.png'),
                        const AssetImage('assets/images/320-hexagon.png'),
                        const AssetImage('assets/images/1280-square.png'),
                      ].map<DropdownMenuItem<ImageProvider<Object>>>((image) {
                        return DropdownMenuItem<ImageProvider<Object>>(
                            value: image,
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ));
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(height: 20),
                  Center(
                    child: OutlinedButton(
                      onPressed: () {
                        /*Navigator.push(
                             context,
                            MaterialPageRoute(
                              builder: (context) => ImmList(),
                              ),
                            );
                            */
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        side: const BorderSide(
                          color: Colors.black26,
                          width: 2,
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 20),
                        textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      child: const Text('Submit'),
                    ),
                  ),
                ],
              ),
            ])));
  }
}

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool? _isChecked = false;
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    Container(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Student(),
                            ),
                          );
                        },
                        child: Icon(Icons.arrow_back, size: 32.0),
                      ),
                    ),
                    const SizedBox(height: 80),
                    const Text(
                      'Register to join the class',
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                        )
                      ]),
                  height: 40,
                  child: const TextField(
                    keyboardType: TextInputType.name,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14),
                        prefixIcon: Icon(Icons.man, color: Colors.black),
                        hintText: "Name",
                        hintStyle: TextStyle(color: Colors.black38)),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                        )
                      ]),
                  height: 40,
                  child: const TextField(
                    keyboardType: TextInputType.name,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14),
                        prefixIcon: Icon(Icons.man, color: Colors.black),
                        hintText: "Surname",
                        hintStyle: TextStyle(color: Colors.black38)),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                        )
                      ]),
                  height: 40,
                  child: const TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14),
                        prefixIcon: Icon(Icons.email, color: Colors.black),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.black38)),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                      )
                    ],
                  ),
                  height: 40,
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.only(left: 16, top: 14, bottom: 14),
                      prefixIcon: Icon(Icons.lock, color: Colors.black),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.black38),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                      )
                    ],
                  ),
                  height: 40,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.only(left: 16, top: 14, bottom: 14),
                      prefixIcon: Icon(Icons.lock, color: Colors.black),
                      hintText: "Confirm Password",
                      hintStyle: TextStyle(color: Colors.black38),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  // color: Colors.orangeAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Checkbox(
                        value: _isChecked,
                        onChanged: (bool? newValue) {
                          setState(() {
                            _isChecked = newValue ?? false;
                          });
                        },
                        //activeColor: Colors.orangeAccent,
                        checkColor: Colors.black,
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'I agree to the Terms of User',
                            textAlign: TextAlign.left,
                          ),
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                            alignment: Alignment.centerLeft,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text('Sign up'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: BorderSide(
                        color: Colors.black26,
                        width: 2,
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SecretWord extends StatefulWidget {
  const SecretWord({Key? key}) : super(key: key);
  _SecretWordState createState() => _SecretWordState();
}

class _SecretWordState extends State<SecretWord> {
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Student(),
                          ),
                        );
                      },
                      child: Icon(Icons.arrow_back, size: 32.0),
                    ),
                  ),
                  const SizedBox(height: 80),
                  Icon(Icons.school),
                  const SizedBox(height: 20),
                  Text(
                    'Enter Secret Word',
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 20,
                        )
                      ]),
                  height: 40,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14),
                        prefixIcon: Icon(Icons.school, color: Colors.black),
                        hintText: "Enter Secret Word",
                        hintStyle: TextStyle(color: Colors.black38)),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text('Enter'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: BorderSide(
                        color: Colors.black26,
                        width: 2,
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                      textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
