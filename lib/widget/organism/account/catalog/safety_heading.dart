import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';


class Safety_heading extends StatelessWidget {
  const Safety_heading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    color: Colors.green,
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
       child: Row(
    children: <Widget>[
    H2text(text: 'Meesho Safe', color: whitecolor, ),
    Expanded(child: Column(
    children: <Widget>[
    H1text(text: 'Your Safety, Our Priority',),
          
                  ],
                ),)
              ],
            ),
          );
  }
}