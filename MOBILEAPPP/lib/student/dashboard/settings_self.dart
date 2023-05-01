import 'package:flutter/material.dart';
import 'package:youngrescuer/student/auth/student_otp_signup.dart';
import 'student.dart';

class StudentSettingsN extends StatefulWidget {
  const StudentSettingsN({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _StudentSettingsNState createState() => _StudentSettingsNState();
}

class _StudentSettingsNState extends State<StudentSettingsN> {
  late Student student = new Student(
      login_type: "image",
      age: 15,
      email: "esalahzada@gmail.com",
      secret_word: "elcin",
      icon: "icon1", school: "20 nomre",
      classroom: "class5v",
      class_number: "class4b",
      emergency_contact: "0552552525",
      emergency_confirmed: true,
      name: "Elcin",
      id: 10,
      surname: "Salajjzada",
      father_name: "Qurban"
  );

  // @override
  // void initState() {
  //   super.initState();
  //   _getStudents();
  // }
  //
  // void _getStudents() async {
  //   var url = 'https://your-django-backend-url.com/api/students/';
  //   var response = await http.get(Uri.parse(url));
  //   if (response.statusCode == 200) {
  //     var data = json.decode(response.body) as List;
  //     setState(() {
  //       _students = data.map((student) => Student.fromJson(student)).toList();
  //     });
  //   }
  // }


  final _registerForm = GlobalKey<FormState>();
  final TextEditingController previousPasswordController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController fatherController = TextEditingController();

  final TextEditingController classNameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  bool passToggle=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Create Account",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFFF79B26),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  key:_registerForm,
                  child: Column(
                      children: [
                        SizedBox(height: 30),
                        TextFormField(
                          keyboardType: TextInputType.name,
                          controller:nameController,
                          decoration: InputDecoration(
                            labelText: "Enter Your name",
                            border:OutlineInputBorder(),
                            prefixIcon: Icon(Icons.person),
                          ),
                          validator: (value){
                            bool namevalid = RegExp(r'^[a-zA-Z ]+$').hasMatch(value!);
                            if(value.isEmpty){
                              return "Add your first name";
                            }
                            if(nameController.text.contains(" ")){
                              return "Do not leave space";
                            }
                            if(!namevalid){
                              return "Use only letters";
                            }
                          },
                        ),
                        SizedBox(height: 15),
                        TextFormField(
                          keyboardType: TextInputType.name,
                          controller:surnameController,
                          decoration: InputDecoration(
                            labelText: "Enter Your surname",
                            border:OutlineInputBorder(),
                            prefixIcon: Icon(Icons.person),
                          ),
                          validator: (value){
                            bool namevalid = RegExp(r'^[a-zA-Z ]+$').hasMatch(value!);
                            if(value.isEmpty){
                              return "Add your last name";
                            }
                            if(surnameController.text.contains(" ")){
                              return "Do not leave space";
                            }
                            if(!namevalid){
                              return "Use only letters";
                            }
                          },
                        ),
                        SizedBox(height: 15),
                        TextFormField(
                          keyboardType: TextInputType.name,
                          controller:fatherController,
                          decoration: const InputDecoration(
                            labelText: "Enter Your Father's Name",
                            border:OutlineInputBorder(),
                            prefixIcon: Icon(Icons.person),
                          ),
                          validator: (value){
                            bool namevalid = RegExp(r'^[a-zA-Z ]+$').hasMatch(value!);
                            if(value.isEmpty){
                              return "Add your last name";
                            }
                            if(fatherController.text.contains(" ")){
                              return "Do not leave space";
                            }
                            if(!namevalid){
                              return "Use only letters";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 15),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          controller:ageController,
                          decoration: const InputDecoration(
                            labelText: "Enter Your Age",
                            border:OutlineInputBorder(),
                            prefixIcon: Icon(Icons.date_range_outlined),
                          ),
                          validator: (value){
                            bool numberValid = RegExp(r"^[0-9]+$").hasMatch(value!);
                            if(value.isEmpty){
                              return "Add your age";
                            }
                            if(!numberValid){
                              return "The given number is invalid. Type only digits";
                            }
                          },
                        ),
                        const SizedBox(height: 15),

                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller:emailController,
                          decoration: InputDecoration(
                            labelText: "Enter email address",
                            border:const OutlineInputBorder(),
                            prefixIcon: Icon(Icons.email),
                          ),
                          validator: (value){
                            bool emailValid=RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!);
                            if(value.isEmpty){
                              return "Enter an email address";
                            }
                            if(!emailValid){
                              return "Enter valid email address";
                            }

                          },
                        ),
                        const SizedBox(height: 15),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          controller: phoneController,
                          decoration: const InputDecoration(
                            labelText: "Enter Emergency Phone Number",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.phone),
                          ),
                          validator: (value) {
                            bool numberValid = RegExp(r"^[0-9]+$").hasMatch(value!);
                            if (value.isEmpty) {
                              return "Add your emergency phone number";
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
                        SizedBox(height: 15),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          controller: classNameController,
                          decoration: const InputDecoration(
                            labelText: "Enter Class Number",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.numbers),
                          ),
                          validator: (value) {
                            bool numberValid = RegExp(r"^[0-9]+$").hasMatch(value!);
                            if (value.isEmpty) {
                              return "Add your class number";
                            }
                            if (!numberValid) {
                              return "The given number is invalid. Type only digits";
                            }
                            if (phoneController.text.length >2) {
                              return "Insert Valid Class Number";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 15),
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          controller: previousPasswordController,
                          obscureText: passToggle,
                          decoration: InputDecoration(
                            labelText: "Enter previous password",
                            border:OutlineInputBorder(),
                            prefixIcon: Icon(Icons.lock_clock),
                            suffix: InkWell(
                              onTap:(){
                                setState(() {
                                  passToggle = !passToggle;
                                });
                              },
                              child: Icon(passToggle ? Icons.visibility : Icons.visibility_off),
                            ),
                          ),
                          validator:(value){
                            if(value!.isEmpty){
                              return "Enter password";
                            }
                            if(passwordController.text.length<8){
                              return "Password length cannot be less than 8 character";
                            }

                          },
                        ),
                        SizedBox(height: 15),
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          controller:passwordController,
                          obscureText: passToggle,
                          decoration: InputDecoration(
                            labelText: "Enter password",
                            border:OutlineInputBorder(),
                            prefixIcon: Icon(Icons.lock_open),
                            suffix: InkWell(
                              onTap:(){
                                setState(() {
                                  passToggle = !passToggle;
                                });
                              },
                              child: Icon(passToggle ? Icons.visibility : Icons.visibility_off),
                            ),
                          ),
                          validator:(value){
                            if(value!.isEmpty){
                              return "Enter password";
                            }
                            if(passwordController.text.length<8){
                              return "Password length cannot be less than 8 character";
                            }

                          },
                        ),
                        SizedBox(height: 15),
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          controller:confirmController,
                          obscureText: passToggle,
                          decoration: InputDecoration(
                            labelText: "Confirm password",
                            border:OutlineInputBorder(),
                            prefixIcon: Icon(Icons.lock),
                            suffix: InkWell(
                              onTap:(){
                                setState(() {
                                  passToggle = !passToggle;
                                });
                              },
                              child: Icon(passToggle ? Icons.visibility : Icons.visibility_off),
                            ),
                          ),
                          validator:(value){
                            if(value!.isEmpty){
                              return "Repeat password";
                            }
                            if(passwordController.text.length<8){
                              return "Password length cannot be less than 8 character";
                            }
                            if(passwordController.text!=confirmController.text){
                              return "Passwords did not match";
                            }
                          },
                        ),
                        SizedBox(height: 15),
                        InkWell(
                          onTap: (){
                            if(_registerForm.currentState!.validate()){
                              emailController.clear();
                              passwordController.clear();
                              confirmController.clear();
                              ageController.clear();
                              nameController.clear();
                              surnameController.clear();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OTPcode()
                                ),
                              );
                              //jwt
                            }
                          },
                          child: Container(
                            height:50,
                            decoration: BoxDecoration(
                              color: Color(0xFFF79B26),
                              borderRadius: BorderRadius.circular(5),

                            ),
                            child: Center(
                              child:Text("Save", style: TextStyle(
                                color:Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),

                      ]
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}
