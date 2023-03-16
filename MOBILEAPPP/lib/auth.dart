// import "dart:ffi";
// import "package:http/http.dart" as http;

// main()async{
//   AuthService authService = AuthService();
//   var responseBody = await authService.registration("","",1,"","","");
//   print(responseBody)
// }
//
// class AuthService{
//   final registrationUrl=Uri.parse("http://127.0.0.1:8080/teachers/");
//
//   Future<String> registration(String name, String surname, int school_id, String emergency_contact, String email, String password)async{
//       var response = await http.post(registrationUrl, body:{
//         "name":name,
//         "surname":surname,
//         "school_id":school_id,
//         "email":email,
//         "emergency_contact":emergency_contact,
//         "password":password,
//       });
//       return response.body;
//   }
//
// }