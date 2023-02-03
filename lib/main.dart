import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:video_call_app/provider/video_provider.dart';
import 'package:video_call_app/view/Question/done/done.dart';
import 'package:video_call_app/view/Question/hot_fet/hot_fat.dart';
import 'package:video_call_app/view/Question/male_female/first.dart';
import 'package:video_call_app/view/demo.dart';
import 'package:video_call_app/view/starting%20screen/start%20screen.dart';

import 'view/Question/loc_glob/loc_glo.dart';
void main(){
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<Video_Provider>(create: (Contest)=>Video_Provider()),
        ],
        child: GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'demo',
    routes:{
        '/': (contest)=>Start_screen(),
        '/hot_fat': (contest)=>Hot_Fat(),
        '/fq': (contest)=>First_Question(),
        '/lg': (contest)=>Lock_Global(),
        '/Done': (contest)=>Done(),
        'demo':(context)=>MyHomePage(),

    } ,
  ),
      ));
}