// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset("assets/top1.png",
                width: size.width, color: Colors.blue),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              "assets/top2.png",
              width: size.width,
              color: Color(0xFFd44f04),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("assets/bottom1.png",
                width: size.width, color: Color(0xFFd44f04)),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("assets/bottom2.png",
                width: size.width, color: Colors.blue),
          ),
          child
        ],
      ),
    );
  }
}
