import 'package:flutter/material.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/organism/orders/all_orders.dart';
import 'package:meesho/widget/organism/orders/ordermodel.dart';
import 'package:meesho/widget/organism/orders/orders_screen.dart';




class OrderButton_container extends StatelessWidget {
  const OrderButton_container({
    Key key,
    @required this.odd, this.text, this.onTap, this.color,
  }) : super(key: key);

  final Ordermodel odd;
  final text;
  final onTap;
  final color;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: onTap,
        child: Container(
          
       padding: EdgeInsets.symmetric(vertical: 10),
          width: 100,
            decoration: BoxDecoration(
                color: color,
        borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: grey300 
              
              )
            ),
      child: Center(
        child: Text((text),
              
            ),
      ),
        // ),
      ),
      ),
    );
  }
}








