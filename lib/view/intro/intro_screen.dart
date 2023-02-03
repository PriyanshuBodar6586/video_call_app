import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'intro_screen2.dart';

class intro1 extends StatefulWidget {
  const intro1({Key? key}) : super(key: key);

  @override
  State<intro1> createState() => _intro1State();
}

class _intro1State extends State<intro1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Image.asset("asset/image/allen.eenn-20230203-0002.jpg",height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
            Column(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(onTap: (){

                  },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 17),
                      child: InkWell(onTap: (){
                        Get.to(Intro2());
                      },
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
