import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
late List<CameraDescription> _cameras;


/// CameraApp is the Main Application.
class CameraApp extends StatefulWidget {
  /// Default Constructor
  const CameraApp({Key? key}) : super(key: key);

  @override
  State<CameraApp> createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  late CameraController controller;

  @override
  void initState() {
    super.initState();
    getCamera();

  }

  void getCamera()
async  {
    _cameras = await availableCameras();

  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    controller = CameraController(_cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
          // Handle access errors here.
            break;
          default:

            break;
        }
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return  Container(height:50,width:50,child: CameraPreview(controller));
  }
}

//face_camera: ^0.0.6