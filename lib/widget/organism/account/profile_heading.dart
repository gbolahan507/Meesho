import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/atom/text/h2.dart';




class Profile_heading extends StatelessWidget {
  const Profile_heading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
         color: whitecolor,
              boxShadow: [
             BoxShadow(
               offset: Offset(0, 10),
               blurRadius: 50,
               color: Colors.grey.withOpacity(0.5)
             )
              ]
      ),
       margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Row(
             children: <Widget>[
                 Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              boxShadow: [
             BoxShadow(
               offset: Offset(0, 10),
               blurRadius: 50,
               color: Colors.grey.withOpacity(0.5)
             )
              ]
              ),
              ),
              SizedBox(width: 10,),

              H2text(
             text: '+2348062835641', color: Colors.black, fontweight: FontWeight.bold,
               ),
               Spacer(),
               Icon(Icons.arrow_forward_ios)
             ],
           ),
    );
  }
}