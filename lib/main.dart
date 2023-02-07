import 'package:face_camera/face_camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:video_call_app/view/Question/done/done.dart';
import 'package:video_call_app/view/Question/hot_fet/hot_fat.dart';
import 'package:video_call_app/view/Question/male_female/first.dart';
import 'package:video_call_app/view/bottom_bar/bottombar.dart';
import 'package:video_call_app/view/starting%20screen/start%20screen.dart';
import 'view/Question/loc_glob/loc_glo.dart';


Future<void> main() async {
     WidgetsFlutterBinding.ensureInitialized();
     await FaceCamera.initialize();
  runApp(Sizer(builder: (context, orientation, deviceType) {
    return  GetMaterialApp(

      debugShowCheckedModeBanner: false,
      initialRoute: 'demo',
      routes: {
        '/': (contest) => Start_screen(),
        '/hot_fat': (contest) => Hot_Fat(),
        '/fq': (contest) => First_Question(),
        '/lg': (contest) => Lock_Global(),
        '/Done': (contest) => Done(),
        //'demo': (context) => Basic(),
        'bootom': (contest) => Bottombar(),
      },
    );
  },

 ));
}



//chat_ui_kit: ^1.4.0