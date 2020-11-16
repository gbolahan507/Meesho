import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/model/catalog_details.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/atom/button_filled.dart';
import 'package:meesho/widget/molecule/products_landing_page.dart';
import 'package:meesho/widget/organism/account/catalog/catalog_landing_page.dart';
import 'package:meesho/widget/organism/homepage/model/homepage_model.dart';




class ProductS_container extends StatelessWidget {
  const ProductS_container({
    Key key, this.homepage, this.onTap, this.firstproductimage, this.secondproductimage, this.thirdproductimage, this.rating, this.currentprice, this.formerprice, this.percentage, this.generalbrandname,
  }) : super(key: key);


  final Homepage homepage;
  final firstproductimage;
  final secondproductimage;
  final thirdproductimage;
  final rating;
  final currentprice;
  final formerprice;
  final percentage;
  final generalbrandname;
  final onTap;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

                child: Container(
                  color: whitecolor,
                  child: Column(
                  children: <Widget>[
                  Container(
                  padding: EdgeInsets.only(left: 50, right: 10),
                  height: 280,
                 child: Row(
                children: <Widget>[
                  Container(
                  
                  child: Image.asset(firstproductimage, fit: BoxFit.cover,)),
                  
                  Spacer(),
                  Column(
                  children: <Widget>[
                  Expanded(
                  child: Container(
                
                  child: Image.asset(secondproductimage,
                  fit: BoxFit.cover,
                  width: 130,)
                      ),
                    ),
                  Expanded(
                  child: Container(
                  width: 130,
                  decoration: BoxDecoration(
                  image: DecorationImage(
                  image: ExactAssetImage(thirdproductimage),
                  fit: BoxFit.cover,
                  // width: 1
                  )
                  ),
            
                    ),
                  )
                ],
              ),
              ],
              ),
            ),
            Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
            child: Column(
            children: <Widget>[
             Row(
            children: <Widget>[
            H2text(text:'${generalbrandname}', fontsize: 16, fontweight: FontWeight.w600,),
            Spacer(),
            Container(
            child: Text("${rating}"),
            color: Colors.green,
            margin: EdgeInsets.only(right:5),
            padding: EdgeInsets.symmetric(horizontal:3, vertical:3),
            )
           ],
            ),


          SizedBox(height: 10,),

          Row(
            children: <Widget>[
              H2text(text:'Staeting from ${currentprice}'),
              SizedBox(width: 10,),
              H1text(text:'${formerprice}' , fontsize: 12.0, ),
              SizedBox(width: 5,),

              H1text(text:'${percentage}', color: Colors.pink[400], fontsize: 14.0,),
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
            
              H2text(text: 'Free Shipping',)
                             ],
                              )),
                          ],
                          ),
                        ),
                ],
              ),
            ),

            Divider(
              color: Colors.grey,
              thickness: 1,
            ),

           Container(
         padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
          Expanded(
          child: Container(
          padding: EdgeInsets.symmetric( vertical: 10),
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          border: Border.all(
          color: Colors.green,
          width: 2,
                        )

                      ),
        child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Icon(Icons.save),
        SizedBox(width: 10,),
        H2text(
         text: 'Share Now', color: Colors.green[500] ,fontweight: FontWeight.w500,),
                      ],
                    )
                    ),
                  ),

        SizedBox(width: 10,),

        Expanded(
        child: ButtonFilled(
        color: pink300,
        text: 'View Product',
          ),
                  )

                ],
              ),
            ),

        Divider(
        color: Colors.grey,
        thickness: 1,
      ),
                         
          ],
        ),
      ),
    );
  }
}