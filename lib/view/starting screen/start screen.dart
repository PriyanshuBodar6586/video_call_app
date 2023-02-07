import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:video_call_app/view/Question/loc_glob/loc_glo.dart';
import 'package:video_call_app/view/Question/male_female/first.dart';

class Start_screen extends StatefulWidget {
  const Start_screen({Key? key}) : super(key: key);

  @override
  State<Start_screen> createState() => _Start_screenState();
}

class _Start_screenState extends State<Start_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Container(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset("asset/image/iPhone 14 Pro Max - 1 (3).png",height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
              Column(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: InkWell(onTap: (){
                      Get.to(Lock_Global());
                    },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: Text("Get start",style: TextStyle(color: Colors.white,fontSize: 27,)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 60,),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
