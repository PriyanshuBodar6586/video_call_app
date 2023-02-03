import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'femaleage/feqage.dart';
import 'maleage/mqage.dart';


class First_Question extends StatefulWidget {
  const First_Question({Key? key}) : super(key: key);

  @override
  State<First_Question> createState() => _First_QuestionState();
}

class _First_QuestionState extends State<First_Question> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              "asset/image/iPhone 14 Pro Max - 1 (3).png",
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){
                        Get.to(Maqage());
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text("Male",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 27,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    InkWell(onTap: (){
                      Get.to(Feqage());
                    },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text("Female",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 27,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 60,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
