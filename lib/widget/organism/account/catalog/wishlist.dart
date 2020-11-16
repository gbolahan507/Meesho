import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/export/molecule_export.dart';
import 'package:meesho/model/catalog_details.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/atom/button_filled.dart';
import 'package:meesho/widget/atom/text/h2.dart';
import 'package:meesho/widget/organism/account/catalog/catalog_landing_page.dart';
import 'package:meesho/widget/organism/homepage/model/homepage_model.dart';
import 'package:meesho/widget/molecule/products_container.dart';
import 'package:meesho/widget/molecule/products_landing_page.dart';



class WishList extends StatefulWidget {
  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {

                 bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundcolor,
      child: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            // margin: EdgeInsets.only(top: 3),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Row(
              children: <Widget>[
                H2text(
                  text: 'Show in clock catalogs only',
                ),
                Spacer(),

            CustomSwitchs(
              isSwitched: isSwitched,
              onpressed : (value){
                  setState(() {
                 isSwitched = value;
                  });
                }
            
              
              )

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: H2text(text: 'Shared on October 27',),
          ),


                  ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index){
                  final Homepage home = homepages[index];
                   return 
                   ProductS_container(
                   homepage: home,
                   firstproductimage: home.firstproductimage,
                   secondproductimage: home.secondproductimage,
                   thirdproductimage: home.thirdproductimage,
                   generalbrandname: home.generalbrandname,
                   formerprice: home.formerprice,
                   currentprice: home.currentprice,
                   percentage: home.percentage,
                   onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Product_landing_page(homepage: homepages[index],) ))
            
                   );
                   
                  },
                  itemCount: homepages.length
                   ),

          // Homepage_product_container()
        ],
      ),
    );
  }
}









