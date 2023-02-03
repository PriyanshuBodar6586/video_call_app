import 'package:flutter/material.dart';

class Home_screnn extends StatefulWidget {
  const Home_screnn({Key? key}) : super(key: key);

  @override
  State<Home_screnn> createState() => _Home_scrennState();
}

class _Home_scrennState extends State<Home_screnn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("video call"),

      ),
      drawer:Drawer(),
    ));
  }
}
