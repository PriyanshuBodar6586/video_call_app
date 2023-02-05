import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:video_call_app/controller/home_Cotrollrt.dart';
import 'package:video_call_app/view/Question/done/done.dart';
import 'package:video_call_app/view/home/home_screen.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  Home_Controller home_controller = Get.put(Home_Controller());
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       bottomNavigationBar: GNav(
         onTabChange: (value){
           home_controller.changeicon(value);
         },
           selectedIndex: home_controller.i.value,
           rippleColor: Colors.grey.shade800, // tab button ripple color when pressed
           hoverColor: Colors.grey.shade700, // tab button hover color
           haptic: true, // haptic feedback
           tabBorderRadius: 15,
           tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
           tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
           tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
           curve: Curves.easeOutExpo, // tab animation curves
           duration: Duration(milliseconds: 900), // tab animation duration
           gap: 8, // the tab button gap between icon and text
           color: Colors.grey[800], // unselected icon color
           activeColor: Colors.purple, // selected icon and text color
           iconSize: 24, // tab button icon size
           tabBackgroundColor: Colors.purple.withOpacity(0.1), // selected tab background color
           padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5), // navigation bar padding
           tabs: [
             GButton(
               icon:Icons.home,
               text: 'Home',
             ),
             GButton(
               icon: Icons.favorite,
               text: 'Likes',
             ),
             GButton(
               icon:Icons.search,
               text: 'Search',
             ),
             GButton(
               icon: Icons.person,
               text: 'Profile',
             )
           ]
       ),
      body: Obx(
            () => IndexedStack(
          index:home_controller.i.value,
          children: [
             Home_screnn(),
             Done(),
             Done(),
             Done(),
          ],
        ),
      ),

    );
  }
  //Widget Button(String text,String s1) {
  //  return Obx(()=>
  //     ElevatedButton.icon(
  //      label: Text("$text"),
  //      icon: const Icon(
  //        Icons.ac_unit_outlined,
  //      ),
  //      onPressed: () {
  //        Navigator.
  //      },
  //    ),
  //  );
    // return InkWell(
    //   onTap: () {
    //     apiproviderF!.changeData(text);
    //   },
    //   child: Container(
    //     height: 30,
    //     width: 80,
    //     margin: EdgeInsets.symmetric(horizontal: 5),
    //     alignment: Alignment.center,
    //     child: Text(
    //       "$text",
    //       style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    //     ),
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(30),
    //       color: text == apiproviderF!.searchdata ? blue : backgroundLightFont,
    //     ),
    //   ),
    // );
  }

