import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/Users.dart';
import 'package:flutter_application_1/models/data.dart';
import 'package:flutter_application_1/widgets/Card.dart';
import 'package:flutter_application_1/widgets/CurrentProfile.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF000000),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          leading: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: userProfileImage(
                  imageURL: CurrentUser.imageURL,
                  size: 40,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.format_align_right_sharp,
                  size: 30,
                ))
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Feed",
                style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 100, 5, 0),
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("All"),
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(color: Color(0xFFE9ECEF)),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          minimumSize: Size(80, 20),
                          onPrimary: Color(0xFFE9ECEF),
                          textStyle: TextStyle(fontSize: 18),
                          primary: Colors.black,
                          elevation: 0),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Planets"),
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(color: Color(0xFFE9ECEF)),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          minimumSize: Size(120, 20),
                          onPrimary: Colors.black,
                          textStyle: TextStyle(fontSize: 18),
                          primary: Colors.white,
                          elevation: 0),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Comets"),
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(color: Color(0xFFE9ECEF)),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          minimumSize: Size(120, 20),
                          onPrimary: Color(0xFFE9ECEF),
                          textStyle: TextStyle(fontSize: 18),
                          primary: Colors.black,
                          elevation: 0),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Solar system"),
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(color: Color(0xFFE9ECEF)),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          minimumSize: Size(120, 20),
                          onPrimary: Color(0xFFE9ECEF),
                          textStyle: TextStyle(fontSize: 18),
                          primary: Colors.black,
                          elevation: 0),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: PlanetCard(
                    ViewText: ('270 views'),
                    SvgLink: ('images/mars-25461.svg'),
                    TextType: ('Mars'),
                  ),
                ),
                PlanetCard(
                  ViewText: ('300 Views'),
                  SvgLink: ('images/moon-4917183.svg'),
                  TextType: ('Mars'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
