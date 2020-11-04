import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/atom/text/h3.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';





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
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.blue
            ),
      ),
          SizedBox(width: 10,),
          H3text(text:"meesho", color: pink300 ,fontsize: 30, fontweight: FontWeight.bold,),
          Spacer(),
          Icon(Icons.favorite ,color: Colors.black,),
          SizedBox(width: 30,),
         Image.asset('images/alarm.png' , color: thickblack,),
          SizedBox(width: 30,),

         Container(
       padding: EdgeInsets.only(right:10),
            
            child: IconButton( 
              icon: FaIcon(FontAwesomeIcons.bell),
              onPressed: (){},
              )
            
            //  Icon(Icons.add_shopping_cart, color: Colors.black,)
             )

        ],
      ),
    );
  }
}