import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';



class My_payment_page extends StatelessWidget {
  My_payment_page({this.title});
  final title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: thickblack,),
        title: H3text(text: title,),
        backgroundColor: whitecolor,
      ),

      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: H2text(text: 'No Payment yet',),
        ),
      )
      
    );
  }
}