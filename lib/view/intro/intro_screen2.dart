import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_call_app/view/intro/intro_screnn3.dart';

class Intro2 extends StatefulWidget {
  const Intro2({Key? key}) : super(key: key);

  @override
  State<Intro2> createState() => _Intro2State();
}

class _Intro2State extends State<Intro2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Image.asset("asset/image/allen.eenn-20230203-0003.jpg",height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
            Column(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(onTap: (){
                      Get.to(Intro3());
                  },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 17),
                      child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text("Next",style: TextStyle(color: Colors.black,fontSize: 20,)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
