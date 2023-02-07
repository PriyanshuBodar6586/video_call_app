import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:video_call_app/view/call_screen/call_screen.dart';

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
        body: InkWell(onTap: (){
           Get.to(Call_screen());
        },
          child: GridView.builder(
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 60.w),
            itemCount:20,
            itemBuilder: (context, index) {
              return Padding(padding: EdgeInsets.all(03),
                child: Container(
                  height: 20.w,
                  width: 20.w,
                   decoration: BoxDecoration(
                   color: Colors.amberAccent,
                     borderRadius: BorderRadius.circular(10),
                   ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
