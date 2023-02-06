import 'package:face_camera/face_camera.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:get/get.dart';


class Call_screen extends StatefulWidget {
  const Call_screen({Key? key}) : super(key: key);

  @override
  State<Call_screen> createState() => _Call_screenState();
}

class _Call_screenState extends State<Call_screen> {
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

                  video


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
