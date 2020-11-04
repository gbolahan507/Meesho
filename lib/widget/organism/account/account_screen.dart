import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/export/molecule_export.dart';
import 'package:meesho/export/organism_export.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/atom/text/h2.dart';
import 'package:meesho/widget/atom/text/h3.dart';
import 'package:meesho/widget/molecule/cart.dart';



class Account_screen extends StatefulWidget {
  @override
  _Account_screenState createState() => _Account_screenState();
}

class _Account_screenState extends State<Account_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: H3text(text: 'My Catalogs',),
        actions: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                ActionWidget(
                  icon: Icons.search,
                  onTap: () => print('search'),
                ),
                ActionWidget(
                  icon: Icons.save,
                  onTap: () => 
        Navigator.push(context, MaterialPageRoute(builder: (context) => Cart_screen()))

                  
                ),
                Popmenu()
                
              ],
            ),
          ),

        ],
      ),

      body: Container(

          child: ListView(
          children: <Widget>[
            Profile_heading(),
            All_Profile_settings(),
            SizedBox(height: 100,),
   




            Container(
              child: H2text(
                allignment: Alignment.center,
                text: 'meesho', color: pinkcolor ),
            ),
             Container(
              child: H1text(
                allignment: Alignment.center,
                text: 'v9.0', fontsize: 12, ),
            ),

            SizedBox(height: 150,)
          ],
        ),
      ),
      
    );
  }
}











