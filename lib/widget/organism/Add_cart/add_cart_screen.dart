import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';





class Add_cart_screen extends StatefulWidget {
  @override
  _Add_cart_screenState createState() => _Add_cart_screenState();
}

class _Add_cart_screenState extends State<Add_cart_screen> {
  @override
  Widget build(BuildContext context) {
           return      Scaffold(
      appBar: AppBar(
        leading: BackButton(color: thickblack,),
        title: H3text(text: 'Cart',),
        backgroundColor: whitecolor,
      ),

      
    );
  }
}
