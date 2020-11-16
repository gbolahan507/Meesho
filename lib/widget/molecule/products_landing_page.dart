import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/export/molecule_export.dart';
import 'package:meesho/model/catalog_details.dart';
import 'package:meesho/model/catalog_model.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/molecule/copy_wish.dart';
import 'package:meesho/widget/molecule/product_landingPages_container.dart';
import 'package:meesho/widget/molecule/product_finalPage.dart';
import 'package:meesho/widget/organism/account/catalog/safety_heading.dart';
import 'package:meesho/widget/organism/homepage/model/homepage_model.dart';


class Product_landing_page extends StatelessWidget {

  final Homepage homepage;


  Product_landing_page({this.homepage});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),

        body: Container(
        child: ListView(
        children: <Widget>[
        Safety_heading(),


              Container(
                padding: EdgeInsets.symmetric(horizontal:20),
                child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                    H3text(text: "${homepage.generalbrandname}",),
                    Spacer(),
                    Container(
                      child: Text('${homepage.rating}'),
                      color: Colors.green,
                      margin: EdgeInsets.only(right:5),
                      padding: EdgeInsets.symmetric(horizontal:3, vertical:3),
                            )
                        ],
                      ),
                      SizedBox(height: 10,),
                      H2text(text: '${homepage.materialtype}',),
                      SizedBox(height: 5,),

                      homepage.sleevelength !=null ? 
                      H2text(text:'Sleeves Length : ${homepage.sleevelength}'):
                      
                      const SizedBox.shrink(),


                      H2text(text:'Pattern : ${homepage.pattern}'),
                      SizedBox(height:5 ,),

                      H2text(text: 'Multipack: ${homepage.multipack}',),
                      SizedBox(height: 5,),

                      H2text(text: 'Size:\n${homepage.size }', height: 1.5, fontsize: 14.0,),
                      SizedBox(height: 10,),

                      H2text(text: 'Dispatch: ${homepage.dispatch}',),
                    ],
                ),
              ),

              SizedBox(height: 10,),

                Container(
             child: Row(
               children: <Widget>[
                 Copy_whishlist(
                   text: 'Copy',
                   icon: Icons.content_copy,
                   onTap: () => print('copy'),
                 ),
              Copy_whishlist(
                   text: 'Wishlist',
                   icon: Icons.favorite,
                   onTap: () => print('favorite'),
                 ),


               ],
             ),
           ),  


                  ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index){
                  final Homepage home = homepages[index];

                  return 
                  Product_landingPages_container(
                  homepage: home,
                  productimage: home.firstproductimage,
                  productname: home.productname,
                  formerprice: home.formerprice,
                  currentprice: home.currentprice,
                  percentage: home.percentage,
                   onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Landpage(homes: homepages[index],) ))

                  );

                      },
                      itemCount: homepages.length
                      ),

            ],
          ),
        ),
      
      
    );
  }




















  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: whitecolor,
      leading: BackButton(
        color:  blackcolor),
              actions: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              ActionWidget(
                icon: Icons.search,
                onTap: () => print('search'),
              ),
              ActionWidget(
                icon: Icons.favorite,
                onTap: () => print('search'),
              ),ActionWidget(
                icon: Icons.search,
                onTap: () => print('search'),

              ),
              
            ],
          ),
        ),
      ],
      );
  }
}










