import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
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
                              fontFamily: 'IndieFlower'
                          ),
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
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: OutlinedButton(
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder:(context)=> ClassRoom()),);
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
                                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
                                      textStyle: const TextStyle(),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Icon(Icons.school, color: Colors.black),
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
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: OutlinedButton(
                                    onPressed: (){

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
                                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
                                      textStyle: const TextStyle(),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Icon(Icons.house, color: Colors.black),
                                        const SizedBox(width: 8),
                                        const Text('I am Teacher'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),


                            ]

                        )

                      ]

                  )

                ]

            )

        )
    );
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
                            builder: (context) => YoungRescuer(),
                          ),
                        );

                      },
                      child: Icon(Icons.arrow_back, size: 32.0),
                    ),


                  ),

                  Text(
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
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,

                        )
                      ]),
                  height: 40,
                  child: TextField(
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
                                  builder: (context) =>  Password()),
                            );

                          },
                          child: const Text(
                            'Forgot Password',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              decoration:TextDecoration.underline,
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
                    onPressed: (){},
                    child: const Text('Log in'),
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
                      padding: EdgeInsets.symmetric(horizontal:50, vertical: 20),
                      textStyle: TextStyle(
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
  Teachers({Key? key}) : super(key: key);

  @override
  _TeachersState createState() => _TeachersState();
}

class _TeachersState extends State<Teachers> {
  bool? _isChecked = false;
  final passwordController = TextEditingController();
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
                        child: Icon(Icons.arrow_back, size: 32.0),
                      ),


                    ),
                    const SizedBox(height: 80),
                    Text(
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
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,

                        )
                      ]),
                  height: 40,
                  child: TextField(
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
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,

                        )
                      ]),
                  height: 40,
                  child: TextField(
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
                    value: _selectedSchoolName,
                    decoration: InputDecoration(
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
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,

                        )
                      ]),
                  height: 40,
                  child: TextField(
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
                      ]),
                  height: 40,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
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
                    controller: passwordController,
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
                    onPressed: (){},
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
                      padding: EdgeInsets.symmetric(horizontal:50, vertical: 20),
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



class ClassRoom extends StatefulWidget {
  const ClassRoom({Key? key}) : super(key: key);
  @override
  _ClassRoomState createState() => _ClassRoomState();
}

class _ClassRoomState extends State<ClassRoom> {
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => YoungRescuer(),
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
                    'Enter Student Room',
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
                        hintText: "Enter Class Room",
                        hintStyle: TextStyle(color: Colors.black38)),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: OutlinedButton(
                    onPressed: (){},
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
                      padding: EdgeInsets.symmetric(horizontal:80, vertical: 20),
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

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
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
                        prefixIcon: Icon(Icons.account_circle, color: Colors.black),
                        hintText: "Email address",
                        hintStyle: TextStyle(color: Colors.black38, fontFamily: 'Italic')),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: OutlinedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OtpCode()),
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
                      padding: EdgeInsets.symmetric(horizontal:80, vertical: 20),
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
class OtpCode extends StatefulWidget {
  OtpCode({Key? key}) : super(key: key);

  @override
  _OtpCodeState createState() => _OtpCodeState();
}

class _OtpCodeState extends State<OtpCode> {
  bool? _isChecked = false;
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
                              builder: (context) =>Password(),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
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
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                      EdgeInsets.only(left: 16, top: 14, bottom: 14),
                      prefixIcon: Icon(Icons.key, color: Colors.black),
                      hintText: "Enter 6-length code",
                      hintStyle: TextStyle(color: Colors.black38,
                          fontFamily: 'Italic'
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),
                Center(
                  child: OutlinedButton(
                    onPressed: (){

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RepairPassword()),
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
                      padding: EdgeInsets.symmetric(horizontal:50, vertical: 20),
                      textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Italic'
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
class RepairPassword extends StatefulWidget {
  RepairPassword({Key? key}) : super(key: key);

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
                        child: Icon(Icons.arrow_back, size: 32.0),
                      ),


                    ),
                    const SizedBox(height: 80),

                    Icon(Icons.build),
                    const SizedBox(height: 20),
                    Text(
                      'Repair Password',
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
                    onPressed: (){

                    },
                    child: const Text('Repair'),
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
                      padding: EdgeInsets.symmetric(horizontal:50, vertical: 20),
                      textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Italic'
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




