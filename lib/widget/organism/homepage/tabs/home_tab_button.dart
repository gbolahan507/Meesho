import 'package:flutter/material.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/atom/text/h2.dart';


class Home_tab_button extends StatelessWidget {
  const Home_tab_button({
    Key key,  this.ontap, this.color, this.padding, this.image, this.numb, this.content, this.left, this.right, this.height,
  }) : super(key: key);


  final numb;
  final content;
  final ontap;
  final color;
  final padding;
  final image;
  final double left;
  final double right;
  final double height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
          child: Container(
            decoration: BoxDecoration(
              color: whitecolor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(left),
                bottomRight: Radius.circular(right),
              ),
            

            border: Border.all(
            color: color,
            width: 2.0,
            )

            ),
            

                      child: Container(
                        height: height,
              margin: EdgeInsets.only(right: 10),
              
           padding:   EdgeInsets.symmetric(horizontal:10, vertical: 10),


              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      H2text(text: '${numb}', fontsize: 24,),
                      SizedBox(width: 10,),
                      Image.asset(image, width: 20,)
                    ],
                  ),
                  SizedBox(height: 20,),
                  H2text(text: '${content}', fontsize: 14.0,)
                ],
              ),
            ),
          ),
    );
  }
}
