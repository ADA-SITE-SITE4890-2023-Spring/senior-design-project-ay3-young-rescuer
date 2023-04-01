import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'classcode.dart';
import 'student_fullname.dart';


class ImageList extends StatefulWidget {
  const ImageList({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ImageListState createState() => _ImageListState();
}

class _ImageListState extends State<ImageList> {
  ImageProvider<Object>? selectedImage = AssetImage('images/youngrescuer.png');
  Student s= new Student();
  final _imagelogin = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Select Your Image",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Color(0xFFF79B26),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Center(
    child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
    child: Form(
    key:_imagelogin,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: <Widget>[
            Text.rich(
            TextSpan(
            text: "${s.fullname}, ",
              style: TextStyle(
                color: Color(0xFFF79B26),
                fontSize: 20,
              ),
              children: [
                TextSpan(
                  text: "ask your teacher to get your icon.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
    ),

                      const SizedBox(height: 20),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xFF8296FF),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: DropdownButtonFormField<ImageProvider<Object>>(
                        dropdownColor: Color(0xFF8296FF),
                        value: selectedImage,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
                            prefixIcon: Icon(Icons.image, color: Color(0xFFF79B26),size:30),

                          ),
                          onChanged: (ImageProvider<Object>? newValue) {
                            setState(() {
                              selectedImage = newValue!;
                            });
                          },
                          items: [
                            const AssetImage('images/youngrescuer.png'),
                            const AssetImage('images/youngrescuer1.png'),
                            const AssetImage('images/youngrescuer2.png'),
                            const AssetImage('images/youngrescuer3.png'),
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
                                )
    );
                          }).toList(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                          child: OutlinedButton(
                            onPressed: () {
                              //jwt
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ImageList(),
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
                            child: Text('Enter Class',style:TextStyle(fontSize:20,color:Colors.white)),
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Color(0xFFF79B26),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              side: BorderSide(
                                color: Color(0xFFF79B26),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
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
                ]

    )
        )
    )
    )
    );
  }
}