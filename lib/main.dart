import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_call_app/controller/home_Cotrollrt.dart';
import 'package:video_call_app/view/Question/done/done.dart';
import 'package:video_call_app/view/Question/hot_fet/hot_fat.dart';
import 'package:video_call_app/view/Question/male_female/first.dart';
import 'package:video_call_app/view/bottom_bar/bottombar.dart';
import 'package:video_call_app/view/demo.dart';
import 'package:video_call_app/view/starting%20screen/start%20screen.dart';

import 'view/Question/loc_glob/loc_glo.dart';
import 'view/home/home_screen.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(GetMaterialApp(

    debugShowCheckedModeBanner: false,
   initialRoute: 'demo',
    routes: {
      '/': (contest) => CameraApp(),
      '/hot_fat': (contest) => Hot_Fat(),
      '/fq': (contest) => First_Question(),
      '/lg': (contest) => Lock_Global(),
      '/Done': (contest) => Done(),
      'demo': (context) => CameraApp(),
      'bootom': (contest) => Bottombar(),
    },
  ));
}
