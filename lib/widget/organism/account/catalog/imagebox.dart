import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/model/catalog_model.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/organism/account/catalog/safety_heading.dart';
import 'package:meesho/widget/organism/homepage/model/homepage_model.dart';




class ImageBox extends StatelessWidget {

   const ImageBox({
    Key key, this.catalog,  this.productimage, this.productname, this.currentprice, this.formerprice, this.percentage, this.homepage, 
  }) : super(key: key);

  final Catalog catalog;
  final Homepage homepage;
  final productimage;
  final productname;
  final currentprice;
  final formerprice;
  final percentage;

  @override
  Widget build(BuildContext context) {
    return Container(
    child: Column(
      children: <Widget>[
     Container (
       height: 280,
       color: Colors.white,
       child: Container(
     child: Center(child: Image.asset(productimage, fit: BoxFit.cover,))
       ),
     ),
     
     Container(
    padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
       child: Column(
    children: <Widget>[
          H2text(text:'${productname}', fontsize: 16, fontweight: FontWeight.w600,),
          SizedBox(height: 10,),

          Row(
            children: <Widget>[
              H2text(text:'${currentprice}'),
              SizedBox(width: 10,),
              H1text(text:'${formerprice}' , fontsize: 12.0, ),
              SizedBox(width: 5,),

              H1text(text:'(${percentage}% off)', color: Colors.pink[400], fontsize: 14.0,),
            ],
          ),
              SizedBox(height: 10,),

          Row(
            children: <Widget>[
              Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple
                ),
                // child: Icon(Icons.close),
              ),
              SizedBox(width: 10,),
              H1text(text:'#100 OFF 1st Order Discount Applied', fontsize: 12.0, color: Colors.purple,),
              
            ],
          ),

   
             ],
               ),
             ),
      ],
     ),
     );
  }
}