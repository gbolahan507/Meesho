
import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/atom/text/h2.dart';
import 'package:meesho/widget/organism/account/edit_profile_page.dart';




class Profile_heading extends StatefulWidget {
  const Profile_heading({
    Key key,
  }) : super(key: key);

  @override
  _Profile_headingState createState() => _Profile_headingState();
}

class _Profile_headingState extends State<Profile_heading> {


  @override
  Widget build(BuildContext context) {
    return InkWell(
   onTap: (){
   Navigator.push(context, MaterialPageRoute(builder: (context) => Edit_profile_page()));
   },
      
          child: Container(
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



                 CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('images/gbolahan2.png')  
              ),

                SizedBox(width: 10,),

                H2text(
               text: '+2348062835641', color: Colors.black, fontweight: FontWeight.bold,
                 ),
                 Spacer(),
                 Icon(Icons.arrow_forward_ios)
               ],
             ),
      ),
    );
  }
}