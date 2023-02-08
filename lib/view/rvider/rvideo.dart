import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_call_app/controller/home_Cotrollrt.dart';
import 'package:video_player/video_player.dart';



class Rvideo extends StatefulWidget {
  const Rvideo({Key? key}) : super(key: key);

  @override
  State<Rvideo> createState() => _RvideoState();
}

class _RvideoState extends State<Rvideo> {
  VideoPlayerController? videoPlayerController;
  Home_Controller home_controller = Get.put(Home_Controller());

  @override
  void initState() {
    super.initState();
    home_controller.initializedplayer();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            GetBuilder<Home_Controller>(
              init: Home_Controller(),
              builder: (controller) => Expanded(
                child: Center(
                  child: controller.chewieController != null &&
                          controller.chewieController!.videoPlayerController
                              .value.isInitialized
                      ? Chewie(controller: controller.chewieController!)
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircularProgressIndicator(),
                            SizedBox(
                              height: 10,
                            ),
                            Text('loading'),

                          ],
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
