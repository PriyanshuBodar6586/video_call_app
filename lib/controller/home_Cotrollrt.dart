import 'dart:ui';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../model/modeldata.dart';



class Home_Controller extends GetxController{
  var i=0.obs;


  void changeicon(int index){
    i.value = index;
  }


  void changsposition(dynamic index){
    i=index;

  }

  RxList<Modeldata>Rgirlvideocall =<Modeldata> [
   Modeldata(  Video: "assets/video/01.mp4"),
   Modeldata(  Video: "assets/video/02.mp4"),
   Modeldata(  Video: "assets/video/01.mp4"),
   Modeldata(  Video: "assets/video/02.mp4"),
   Modeldata(  Video: "assets/video/01.mp4"),
   Modeldata(  Video: "assets/video/02.mp4"),
   Modeldata(  Video: "assets/video/01.mp4"),
   Modeldata(  Video: "assets/video/02.mp4"),

  ].obs;

 late VideoPlayerController  videoPlayercontroller;
  ChewieController? chewieController;

  RxList data = [].obs;
  Modeldata?Datapickkk;

  @override
  void onInit() {
    super.onInit();
   initializedplayer();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    videoPlayercontroller.dispose();
    chewieController!.dispose();
  }

  loadVideo() {

  }

  Future<void> initializedplayer() async{
    videoPlayercontroller=VideoPlayerController.asset("asset/video/01.mp4" );
    await Future.wait([videoPlayercontroller.initialize()]);
    chewieController = ChewieController(
        videoPlayerController:videoPlayercontroller,
      autoPlay: true,
      looping: true,
      materialProgressColors: ChewieProgressColors(
        playedColor:Colors.red,
        handleColor: Colors.cyanAccent,
        backgroundColor: Colors.yellow,
        bufferedColor: Colors.lightGreen,
      ),

      autoInitialize: true,

    );
    update();
  }


}

