
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../rvider/rvideo.dart';

class Lottie_Screen extends StatefulWidget {
  const Lottie_Screen({Key? key}) : super(key: key);

  @override
  State<Lottie_Screen> createState() => _Lottie_ScreenState();
}


class _Lottie_ScreenState extends State<Lottie_Screen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 0), () {
      return Get.to(Rvideo());

    });
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffffffff),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset("asset/image/84691-whaiting.json"),

              SizedBox(
                height: 20,
              ),

            ],
          ),
        ),
    );
  }
}