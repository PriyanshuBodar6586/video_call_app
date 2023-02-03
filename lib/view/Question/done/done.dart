import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../intro/intro_screen.dart';

class Done extends StatefulWidget {
  const Done({Key? key}) : super(key: key);

  @override
  State<Done> createState() => _DoneState();
}

class _DoneState extends State<Done> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Get.to(intro1());
                  },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white30,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("Done"
                          "",style: TextStyle(color: Colors.white,fontSize: 27,)),
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
    );;
  }
}
