class Answer {
  final int id;
  final String name;
  final String answered_by;
  final String question;
  final bool is_correct;


  Answer( {required this.answered_by, required this.question, required this.is_correct, required this.name, required this.id});

  factory Answer.fromJson(Map<String, dynamic> json) {

    return Answer(
      id: json['id'],
      name: json['name'],
      answered_by: json['answered_by'],
      question: json['question'],
      is_correct: json['is_correct'],
    );
  }
}


class Student {
  final int id;
  final String name;
  final String surname;
  final String father_name;
  final String login_type;
  final int age;
  final String email;
  final String secret_word;
  final String icon;
  final String school;
  final String class_number;
  final String classroom;
  final String emergency_contact;
  final bool emergency_confirmed;

  Student({required this.login_type,required this.age, required this.email, required this.secret_word, required this.icon,required this.school, required this.class_number, required this.classroom, required this.emergency_contact, required this.emergency_confirmed, required this.name, required this.id, required this.surname, required this.father_name});

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'],
      name: json['name'],
      surname: json['surname'],
      father_name: json['father_name'],
      age: json['age'],
      email: json['email'],
      secret_word: json['secret_word'],
      icon: json['icon'],
      school: json['school'],
      class_number: json['class_number'],
      classroom: json['classroom'],
      login_type: json['login_type'],
      emergency_contact: json['emergency_contact'],
      emergency_confirmed: json['emergency_confirmed'],
    );
  }
}

class Classroom {
  final int id;
  final String name;
  final String created_by;
  final String auth_type;


  Classroom({required this.id,required this.name, required this.created_by,required this.auth_type});

  factory Classroom.fromJson(Map<String, dynamic> json) {
    return Classroom(
      id: json['id'],
      name: json['name'],
      created_by: json['created_by'],
      auth_type: json['auth_type'],
    );
  }
}