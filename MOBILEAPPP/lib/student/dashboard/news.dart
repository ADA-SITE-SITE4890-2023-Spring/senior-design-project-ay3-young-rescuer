import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../teacher/dashboard/teacher_dashboard.dart';
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
                      builder: (context) => TeacherDashboard(),
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
