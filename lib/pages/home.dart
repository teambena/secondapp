import 'package:flutter/material.dart';

import 'detail.dart';

class HomePage extends StatefulWidget {
  // const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Computer Knowledge"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
            children: [
              MyBox(
                  "What is computer?",
                  "Computer is a things to calculate and do any other works",
                  "https://cdn.pixabay.com/photo/2016/03/26/13/09/workspace-1280538_960_720.jpg"
              ),
              SizedBox(height: 20,),
              MyBox(
                "What is Flutter",
                "Flutter is a tool to create a mobile application",
                "https://cdn.pixabay.com/photo/2020/03/31/06/28/goldfinch-4986437_960_720.jpg"
              ),
              SizedBox(height: 20,),
              MyBox(
                "What is Dart?",
                "Dart is a language used in Flutter",
                "https://cdn.pixabay.com/photo/2018/12/26/14/22/darts-3895861_960_720.jpg"
              ),
              SizedBox(height: 20,),
            ]
        )
      ));
  }

  Widget MyBox(String title, String subtitle, String img_url) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.blue[200],
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(
            img_url),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken)
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(
          title,
          style: TextStyle(fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20,),
        Text(
          subtitle,
          style: TextStyle(fontSize: 15,
          color: Colors.white),),
        SizedBox(height: 15,),
          TextButton(
              onPressed: () {
                print("next page >>");
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsPage()));
              },
              child: Text("read more")
          )
      ],)
    );
  }
}

