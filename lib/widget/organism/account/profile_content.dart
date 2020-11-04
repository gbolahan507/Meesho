import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/atom/text/h2.dart';



class Profile_content extends StatelessWidget {
  const Profile_content({
    Key key, this.onTap, this.icon, this.text,
  }) : super(key: key);


  final onTap;
  final icon;
  final text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
          child: Container(
        padding: EdgeInsets.only(bottom: 15),
        // padding: EdgeInsets.only(bottom: 10),

        child: Column(

          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(icon, color: blackcolor,),
                SizedBox(width: 15,),
                H2text(text:  text, color: greycolor, fontweight: FontWeight.w500,)
              ],
            ),
            SizedBox(height: 10,),

            Divider(),
          ],
        ),
      ),
    );
  }
}