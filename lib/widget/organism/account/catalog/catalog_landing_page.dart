import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/export/molecule_export.dart';
import 'package:meesho/model/catalog_details.dart';
import 'package:meesho/model/catalog_model.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/molecule/copy_wish.dart';
import 'package:meesho/widget/molecule/product_finalPage.dart';

import 'package:meesho/widget/molecule/product_landingPages_container.dart';
import 'package:meesho/widget/organism/account/catalog/safety_heading.dart';


class Catalog_landing_page extends StatefulWidget {
  @override
  _Catalog_landing_pageState createState() => _Catalog_landing_pageState();
}

class _Catalog_landing_pageState extends State<Catalog_landing_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),

        body: Container(
        child: ListView(
        children: <Widget>[
        Safety_heading(),


              Container(
                padding: EdgeInsets.symmetric(horizontal:10),
                child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                    H3text(text: catalogs[0].generalbrandname,),
                    Spacer(),
                    Container(
                      child: Text('3.8 *'),
                      color: Colors.green,
                      margin: EdgeInsets.only(right:5),
                      padding: EdgeInsets.symmetric(horizontal:3, vertical:3),
                            )
                        ],
                      ),
                      SizedBox(height: 5,),
                      H2text(text: catalogs[0].materialtype,),
                      SizedBox(height: 5,),

                      H2text(text: catalogs[0].pattern,),
                      SizedBox(height:5 ,),

                      H2text(text: 'Multipack: ${catalogs[0].multipack}',),
                      SizedBox(height: 5,),

                      H2text(text: 'Size: ${catalogs[0].size}',),
                      SizedBox(height: 5,),

                      H2text(text: 'Dispatch: ${catalogs[0].dispatch}',),
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
                        final Catalog logs = catalogs[index];
                        return 
                             Product_landingPages_container(
                               catalog: logs, productname: logs.productname, productimage: logs.productimage, currentprice: logs.currentprice, formerprice: logs.formerprice, percentage: logs.percentage,
                               onTap: () => Navigator.push(context, 
                               MaterialPageRoute(builder: (context) => Landpage(catalog: catalogs[index] ,))),
                            
                             );
                              
                      },
                      itemCount: catalogs.length
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










