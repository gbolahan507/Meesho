import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';







class Notification_page extends StatefulWidget {
     final String title;
   Notification_page({ this.title});
  @override
  _Notification_pageState createState() => _Notification_pageState();
}

class _Notification_pageState extends State<Notification_page> {
  @override
  Widget build(BuildContext context) {
    
           return      Scaffold(
      appBar: AppBar(
        leading: BackButton(color: thickblack,),
        title: H3text(text: 'Notification'),
        backgroundColor: whitecolor,
      ),

      
    );
  }
}



