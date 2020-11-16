import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/organism/account/edit_profile_screen.dart';

class About_me extends StatelessWidget {
  const About_me({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: whitecolor,
        boxShadow: [
        BoxShadow(
          offset: Offset(0, 5),
          blurRadius: 20,
          color: Colors.grey.withOpacity(0.3)
          )
            ]

        ),
        child: Container(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  H2text(
                    text: 'About Me',
                  ),
                  Spacer(),
                   InkWell(
              onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => Edit_profile_screen()));

              },
                        child: H1text(
                          fontweight: FontWeight.bold,
                          text: 'Add Details', color: Colors.blue,),
                                                                                                                                                                                                                                                                                       )
                ],
              )
            ],
          ),
        ),
        
    );
  }
}