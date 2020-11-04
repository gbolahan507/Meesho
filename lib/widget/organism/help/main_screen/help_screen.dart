import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/export/molecule_export.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/atom/text/h3.dart';
import 'package:meesho/widget/organism/help/home/homescreen_help.dart';



class Help_screen extends StatefulWidget {
  @override
  _Help_screenState createState() => _Help_screenState();
}

class _Help_screenState extends State<Help_screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
           length: 4,
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: H3text(text: 'Help'),

          bottom: TabBar( 
               
                      unselectedLabelColor: Color(0xFF999999),
                      labelColor: thickblack,
                      labelPadding: EdgeInsets.symmetric(horizontal: 5),
                      indicatorColor: whitecolor,
          tabs: [
            
            Text('Home', style: TextStyle(fontSize: 20), ),
            Text('Contact Uc', style: TextStyle(fontSize: 18)),
            Text('Faq', style: TextStyle(fontSize: 20)),
            Text('Blog', style: TextStyle(fontSize: 20)),


          ],
        ),
      ),

      body: Container(
          color: grey300,
          child: TabBarView(
            children: [
          HomeScreen_help(),
          Scaffold(),
          Scaffold(),
          Scaffold(),

            ],
          ),
        ),
    ),
  );

  }
}