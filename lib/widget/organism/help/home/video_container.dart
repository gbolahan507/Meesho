import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';





class Video_container extends StatelessWidget {
  const Video_container({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.only(),
     child: Container(
      //  color: Colors.red,
       child: Column(
         children: <Widget>[
           Expanded(
                        child: Container(
               child: Stack(
               children: <Widget>[
    ClipRRect(
               borderRadius: BorderRadius.circular(8),
               child: Container(
               padding: EdgeInsets.only(left: 20),
               margin: EdgeInsets.only(top: 10, bottom: 10),
               width: 250,
               child: Image.network( 'https://images.unsplash.com/photo-1499363536502-87642509e31b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
      fit: BoxFit.cover,
      ),
      ),
        ),
      Positioned(
               bottom: 55,
               right: 0,
               left: 10,
               child: 
               InkWell(
               onTap: () => print('play'),
               child: Center(
               child: Container(
               padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
               child: Image.asset('images/play.png', width: 30, ),
),
     ),
                ),
                 ),

      ],
               ),
             ),
           ),
              Container(
       // color: Colors.red,
       margin: EdgeInsets.only(bottom: 20),
      child: H4text(text: 'THE WAR', color: thickblack,),
     )
         ],
       ),
         
       ),
    );
  }
}