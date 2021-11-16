import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Users.dart';
import 'package:flutter_application_1/models/data.dart';
import 'package:flutter_application_1/widgets/CurrentProfile.dart';

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
        body: Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("All"),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
