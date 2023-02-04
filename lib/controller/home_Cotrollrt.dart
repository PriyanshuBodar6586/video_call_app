import 'package:get/get.dart';

import '../view/Question/done/done.dart';
import '../view/Question/male_female/first.dart';
import '../view/starting screen/start screen.dart';

class Home_Controller extends GetxController{
  int pageIndex = 0;

  List pages = [
    Done(),
    Start_screen(),
    Done(),
    First_Question(),
  ];


  var i=0.obs;

  void changeicon(int index){
    i.value = index;
  }
}