import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/export/organism_export.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/atom/text/h3.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meesho/widget/organism/Add_cart/add_cart_screen.dart';
import 'package:meesho/widget/organism/account/childern_folder/notifications.dart';
import 'package:meesho/widget/organism/account/edit_profile_page.dart';





class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       padding: EdgeInsets.only(left:8),
      child: Row(
        children: <Widget>[
           InkWell(
             onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context) => Edit_profile_page()));

             },
                        child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('images/gbolahan2.png')  
                ),
           ),
          SizedBox(width: 10,),
          H3text(text:"meesho", color: pink300 ,fontsize: 30, fontweight: FontWeight.bold,),
          Spacer(),
          InkWell(
            onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context) => My_catalog()));
           
            },
            child: Icon(Icons.favorite ,color: Colors.black,)),

          SizedBox(width: 30,),
         InkWell(
           onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Notification_page()));

           },
           child: FaIcon(FontAwesomeIcons.bell, color: thickblack,)),
          SizedBox(width: 30,),

         InkWell(
           onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Add_cart_screen()));

           },
                    child: Container(
       padding: EdgeInsets.only(right:10),
              
              child: 
                 FaIcon(FontAwesomeIcons.shoppingCart, color: thickblack,),
                ),
         )
            
             

        ],
      ),
    );
  }
}