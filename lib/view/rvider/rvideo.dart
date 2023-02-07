import 'package:flutter/material.dart';

class Rvideo extends StatefulWidget {
  const Rvideo({Key? key}) : super(key: key);

  @override
  State<Rvideo> createState() => _RvideoState();
}

class _RvideoState extends State<Rvideo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(),
    ));
  }
}
