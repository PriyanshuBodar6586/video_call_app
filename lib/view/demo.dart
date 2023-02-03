import 'package:flutter/material.dart';


import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:video_call_app/provider/video_provider.dart';

import 'home/home_screen.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    List WidgetsList=[Home_screnn(),Home_screnn(),Home_screnn(),Home_screnn()];
    return  Scaffold(
      body: WidgetsList[Provider.of<Video_Provider>(context,listen: true).i],
      bottomNavigationBar: GNav(
         selectedIndex:Provider.of<Video_Provider>(context,listen:true).i,
          // onTap:(value){
          //   Provider.of<bootam_Provider>(context,listen:false).changeicon(value);
          // },
          // currentIndex:Provider.of<bootam_Provider>(context,listen:true).i,
        onTabChange: (value){
          Provider.of<Video_Provider>(context,listen: false).changeicon(value);
        },
        rippleColor: Colors.grey.shade800, // tab button ripple color when pressed
        hoverColor: Colors.grey.shade700, // tab button hover color
        haptic: true, // haptic feedback
        tabBorderRadius: 15,
        //tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
        //tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
        // tabShadow: [
        //   BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
        curve: Curves.easeOut, // tab animation curves
        duration: Duration(milliseconds: 300), // tab animation duration
        gap: 8, // the tab button gap between icon and text
        color: Colors.grey[800], // unselected icon color
        activeColor: Colors.white, // selected icon and text color
        iconSize: 24, // tab button icon size
        tabBackgroundColor: Colors.blue.shade300, // selected tab background color
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5), // navigation bar padding
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.favorite,
            text: 'Likes',
          ),
          GButton(
            icon: Icons.search,
            text: 'Search',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          )
        ]
    )


    );
  }
}


