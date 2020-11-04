import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'dart:async';

import 'package:meesho/export/others_export.dart';
import 'package:meesho/util/colors.dart';


class Launch_Screen extends StatefulWidget {
  @override
  _Launch_ScreenState createState() => _Launch_ScreenState();
}

class _Launch_ScreenState extends State<Launch_Screen> {


 @override
  void initState() {
    super.initState();
    Timer (Duration(seconds: 3) , () => Navigator.push(context, MaterialPageRoute(builder: (context) => NavScreen())));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 45),
            decoration: BoxDecoration(
                    color: pinkcolor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(10, 10),
                          color: Colors.white, spreadRadius: 10, blurRadius: 0)
                    ]),
            child:  H3text(text: 'meesho', fontsize: 24.0, color: whitecolor,)
          ),
                ],
              ),
          SizedBox(height: 30,),


          H3text(
            allignment: Alignment.center,
            text: "India #1 Reseller App", fontsize: 24.0,
          ),
          SizedBox(height: 10,),
          H1text(
            allignment: Alignment.center,
            text: "Trusted by 1 Crore+ Reseller across india",
          ),
            ],
          ),
        ),
      ),
      
      );
  }
}