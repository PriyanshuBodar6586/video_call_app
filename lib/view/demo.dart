// import 'dart:html';
//
// import 'package:face_camera/face_camera.dart';
// import 'package:flutter/material.dart';
//
// class Demo_Screen extends StatefulWidget {
//   const Demo_Screen({Key? key}) : super(key: key);
//
//   @override
//   State<Demo_Screen> createState() => _Demo_ScreenState();
// }
//
// class _Demo_ScreenState extends State<Demo_Screen> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SmartFaceCamera(
//           autoCapture: true,
//           defaultCameraLens: CameraLens.front,
//           message: 'Center your face in the square',
//           onCapture: (File? image){
//
//           },
//         ),
//       ),
//     );
//   }
// }

import 'dart:io';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:face_camera/face_camera.dart';



class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  File? _capturedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Builder(builder: (context) {
      if (_capturedImage != null) {
        return Center(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.file(_capturedImage!,


              ),
              // ElevatedButton(
              //     onPressed: () => setState(() => _capturedImage = null),
              //     child: const Text(
              //       'Capture Again',
              //       textAlign: TextAlign.center,
              //       style: TextStyle(
              //           fontSize: 14, fontWeight: FontWeight.w700),
              //     ))
            ],
          ),
        );
      }
      return Stack(
        alignment: Alignment.bottomRight,
        children: [
          Center(
            child: Container(
              color: Colors.pink,
              height: double.infinity,
              width: double.infinity,

              /*
                  -----------------------------------------------
                  ----------------------------------------
                  ---------------------------
                  -----------------------
                  ---------------------
                  --------------------------
                  --------------------------
                  ------------------------------
                  ---------------------------------
                  -----------------------------------------------

               */
            ),
          ),
          ClipRRect(borderRadius: BorderRadius.circular(10),
            child: Container(

              height: MediaQuery.of(context).size.height*0.28,
              width: MediaQuery.of(context).size.width*0.32,
              child: SmartFaceCamera(
                //  autoCapture: true,
                  defaultCameraLens: CameraLens.front,
                  onCapture: (File? image) {
                    _capturedImage = image;
                  },
                ),
            ),
          ),
        ],
      );
    }
    ),
    );
  }

}

// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
// late List<CameraDescription> _cameras;
//
//
// /// CameraApp is the Main Application.
// class CameraApp extends StatefulWidget {
//   /// Default Constructor
//   const CameraApp({Key? key}) : super(key: key);
//
//   @override
//   State<CameraApp> createState() => _CameraAppState();
// }
//
// class _CameraAppState extends State<CameraApp> {
//   late CameraController controller;
//
//   @override
//   void initState() {
//     super.initState();
//     getCamera();
//
//   }
//
//   void getCamera()
// async  {
//     _cameras = await availableCameras();
//
//   }
//
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//
//     controller = CameraController(_cameras[0], ResolutionPreset.max);
//     controller.initialize().then((_) {
//       if (!mounted) {
//         return;
//       }
//       setState(() {});
//     }).catchError((Object e) {
//       if (e is CameraException) {
//         switch (e.code) {
//           case 'CameraAccessDenied':
//           // Handle access errors here.
//             break;
//           default:
//
//             break;
//         }
//       }
//     });
//   }
//
//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (!controller.value.isInitialized) {
//       return Container();
//     }
//     return  Container(child: CameraPreview(controller));
//   }
// }
//
// //face_camera: ^0.0.6
