import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_call_app/controller/home_Cotrollrt.dart';
import 'package:video_call_app/view/Question/done/done.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  Home_Controller home_controller = Get.put(Home_Controller());
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
                  children: [
                    Container(
                      height: 50,
                      width: 355,
                      decoration: BoxDecoration(
                        color: Colors.white38,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton.icon(
                            label: Text("Home"),
                            icon: const Icon(
                              Icons.ac_unit_outlined,
                            ),
                            onPressed: () {
                              Get.to(Done());
                            },
                          ),
                          ElevatedButton.icon(
                            label: Text("view"),
                            icon: const Icon(
                              Icons.access_time_filled_outlined,
                            ),
                            onPressed: () {
                              Get.to(Done());
                            },
                          ),
                          ElevatedButton.icon(
                            label: Text("person"),
                            icon: const Icon(
                              Icons.dark_mode_rounded,
                            ),
                            onPressed: () {
                              Get.to(Done());
                            },
                          ),
                          ElevatedButton.icon(
                            label: Text("lodo"),
                            icon: const Icon(
                              Icons.add_alert_outlined,
                            ),
                            onPressed: () {
                              Get.to(Done());
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  //Widget Button(String text,String s1) {
  //  return Obx(()=>
  //     ElevatedButton.icon(
  //      label: Text("$text"),
  //      icon: const Icon(
  //        Icons.ac_unit_outlined,
  //      ),
  //      onPressed: () {
  //        Navigator.
  //      },
  //    ),
  //  );
    // return InkWell(
    //   onTap: () {
    //     apiproviderF!.changeData(text);
    //   },
    //   child: Container(
    //     height: 30,
    //     width: 80,
    //     margin: EdgeInsets.symmetric(horizontal: 5),
    //     alignment: Alignment.center,
    //     child: Text(
    //       "$text",
    //       style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    //     ),
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(30),
    //       color: text == apiproviderF!.searchdata ? blue : backgroundLightFont,
    //     ),
    //   ),
    // );
  }

