import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/model/catalog_details.dart';
import 'package:meesho/model/catalog_model.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/atom/button_filled.dart';
import 'package:meesho/widget/atom/text/h2.dart';
import 'package:meesho/widget/molecule/copy_wish.dart';
import 'package:meesho/widget/organism/account/catalog/imagebox.dart';
import 'package:meesho/widget/organism/account/catalog/out_of_stock_box.dart';
import 'package:meesho/widget/organism/homepage/model/homepage_model.dart'; 






class Product_landingPages_container extends StatefulWidget {
  const Product_landingPages_container({
    Key key, this.catalog, this.onTap, this.productimage, this.productname, this.currentprice, this.formerprice, this.percentage, this.outofstock, this.homepage,
  }) : super(key: key);

  final Catalog catalog;
  final Homepage homepage;

  final productimage;
  final productname;
  final currentprice;
  final formerprice;
  final percentage;
  final outofstock;
  final onTap;

  @override
  _Product_landingPages_containerState createState() => _Product_landingPages_containerState();
}

class _Product_landingPages_containerState extends State<Product_landingPages_container> {


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
          child: Container(
        child: Column(
          children: <Widget>[

            ImageBox(
              productimage: widget.productimage,
              productname: widget.productname,
              currentprice: widget.currentprice,
              formerprice: widget.formerprice,
              percentage: widget.percentage,
            ),
       
          SizedBox(height: 10,),


                   Container(
                       child: Row(
                       children: <Widget>[
                         Container(
                       padding: EdgeInsets.symmetric(horizontal:10, vertical: 10),
                        decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(5),
                   color: backgroundcolor                                                                                               
                 ),
                     child: Row(
                     children: <Widget>[
                               Icon(Icons.motorcycle),
                               SizedBox(width: 10,),
                               
                               H2text(text: 'Free Shipping',)
                          ],
                           )),
                       ],
                       ),
                     ),

                    widget.homepage.outofstock ==null ?

                     OutOfStock_box_with_button()    
                     
                     :
                        Container(
               child: Row(
                 children: <Widget>[
                   Copy_whishlist(
                     text: 'SHARE ON OTHERS',
                     fontsize: 12.0,
                     icon: Icons.content_copy,
                     onTap: () => print('others'),
                   ),
                Copy_whishlist(
                     text: 'SHARE ON WHATSAPP',
                     fontsize: 12.0,
                     icon: Icons.favorite,
                     onTap: () => print('whatsapp'),
                   ),


                 ],
               ),
             ), 
                      

      
             

             







             ],
           ),
         ),
    );
  }
}





