import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../bottom_bar/bottombar.dart';
import '../home/home_screen.dart';

class Intro3 extends StatefulWidget {
  const Intro3({Key? key}) : super(key: key);

  @override
  State<Intro3> createState() => _Intro3State();
}

class _Intro3State extends State<Intro3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Image.asset("asset/image/LOC.png",height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
            Column(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(onTap: (){
                      Get.to(Bottombar());
                  },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 17),
                      child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.black38,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text("Next",style: TextStyle(color: Colors.white,fontSize: 20,)),
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
