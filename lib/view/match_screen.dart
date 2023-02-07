import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import 'lottie_screen/lottie_screeen.dart';

class Match_screen extends StatefulWidget {
  const Match_screen({Key? key}) : super(key: key);

  @override
  State<Match_screen> createState() => _Match_screenState();
}

class _Match_screenState extends State<Match_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        backgroundColor:  Color(0xffffffff),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end ,
            children: [

              Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                Lottie.asset(height: 29.h,width: 25.w,"asset/image/70317-morelive-like-icon.json"),
                Lottie.asset(height: 29.h,width: 25.w,"asset/image/70317-morelive-like-icon.json"),
                Lottie.asset(height: 29.h,width: 25.w,"asset/image/70317-morelive-like-icon.json"),
              ],),
            //  Align(  alignment: Alignment.bottomCenter,

              Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: (){
                   Get.to(Lottie_Screen());
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.08,
                    width: MediaQuery.of(context).size.width*0.5,
                    decoration: BoxDecoration(
                      color: Colors.black38,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text("Tap To Start",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 27,
                          )),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
