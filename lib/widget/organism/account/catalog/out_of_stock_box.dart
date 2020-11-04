import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/atom/button_filled.dart';



class OutOfStock_box_with_button extends StatelessWidget {
  const OutOfStock_box_with_button({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:10,),

      child: Column(
        children: <Widget>[

          Out_of_stock_box(),
       
           SizedBox(height: 10,),

          ButtonFilled(
            text: 'I HAVE AN ORDER FOR THIS',
             action: () => print('good'),
          ),
           ],
      ),
    );
  }
}

class Out_of_stock_box extends StatelessWidget {
  const Out_of_stock_box({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
               color: lightyellow,

      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: <Widget>[
          Row (
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                color: pinkcolor,
                height: 5,
                width: 10,
              ),
             SizedBox(width: 10,),

             Expanded(
                child: H1text(
                 text: "Out of stock. Please choose a product and size to get notified when back in stock",
               ),
             )

            ],
          ),
             
        ],
      ),
    );
  }
}
