import 'package:flutter/material.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/atom/text/h3.dart';



class Copy_whishlist extends StatelessWidget {
  const Copy_whishlist({
    Key key, this.text,  this.icon, this.onTap, this.fontsize,
  }) : super(key: key);

final text;
final  icon;
final onTap;
final fontsize;




  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
          onTap: onTap,
          child: Container(
         padding: EdgeInsets.symmetric(vertical: 15,),
           decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight:Radius.circular(3)),
          border: Border.all(color: greycolor)
         ),
          child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Icon(icon, color: greycolor,),
          SizedBox(width: 10,),
          H3text(text: text, color: Colors.blue, fontsize: fontsize,),
            ],
          ),
        ),
      ),
    );
  }
}