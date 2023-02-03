import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_call_app/view/Question/hot_fet/hot_fat.dart';
import 'package:video_call_app/view/Question/male_female/first.dart';

class Lock_Global extends StatefulWidget {
  const Lock_Global({Key? key}) : super(key: key);

  @override
  State<Lock_Global> createState() => _Lock_GlobalState();
}

class _Lock_GlobalState extends State<Lock_Global> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset("asset/image/iPhone 14 Pro Max - 1 (3).png",height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
            Column(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,

                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Get.to(Hot_Fat());
                        },

                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white30,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(child: Text("Local",style: TextStyle(color: Colors.white,fontSize: 27,),),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(onTap: (){
                        Get.to(Hot_Fat());
                      },
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white30,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(child: Text("Globel",style: TextStyle(color: Colors.white,fontSize: 27,)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),


                    ],
                  ),
                ),
                SizedBox(height: 60,),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
