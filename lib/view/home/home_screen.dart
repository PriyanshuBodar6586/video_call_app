import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Home_screnn extends StatefulWidget {
  const Home_screnn({Key? key}) : super(key: key);

  @override
  State<Home_screnn> createState() => _Home_scrennState();
}

class _Home_scrennState extends State<Home_screnn> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Video CAll app"),
        ),
        body: GridView.builder(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 300),
          itemCount:20,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 190,
                  width: MediaQuery.of(context).size.width*0.48,
                   decoration: BoxDecoration(
                   color: Colors.amberAccent,
                     borderRadius: BorderRadius.circular(10),
                   ),
                ),

              ],
            );
          },
        ),
      ),
    );
  }
}
