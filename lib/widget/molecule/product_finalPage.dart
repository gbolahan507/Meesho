import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/export/molecule_export.dart';
import 'package:meesho/model/catalog_model.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/atom/all_input/search_input.dart';
import 'package:meesho/widget/organism/account/catalog/imagebox.dart';
import 'package:meesho/widget/organism/account/catalog/sizes_container.dart';
import 'package:meesho/widget/organism/account/catalog/out_of_stock_box.dart';
import 'package:meesho/widget/organism/account/catalog/safety_heading.dart';
import 'package:meesho/widget/organism/homepage/model/homepage_model.dart';


class Landpage extends StatefulWidget {

  final Catalog catalog;
  final Homepage homes;
   Landpage({this.catalog, this.homes});

  @override
  _LandpageState createState() => _LandpageState();
}

class _LandpageState extends State<Landpage> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey100,
      appBar: buildAppBar(),
      body: Container(
          child: ListView(
            children: <Widget>[
            Safety_heading(),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(bottom:10, ),
              color: whitecolor,
              child: Column(
                children: <Widget>[
                  ImageBox (
      productname: widget.homes.productname,
      productimage: widget.homes.productimage,
      currentprice: widget.homes.currentprice,
      formerprice: widget.homes.formerprice,
      percentage: widget.homes.percentage,

                  ),
              
             Container(
      padding: EdgeInsets.symmetric(horizontal:10,),

      child: Column(
      children: <Widget>[
      H1text(text: 'Price inclusive of GST',) ,
       
        Free_Dispatch_Box(
          icon: Icons.motorcycle,
          text: 'Free Sheeping',
        ),
      SizedBox(height: 10,),
        Free_Dispatch_Box(
          icon: Icons.motorcycle,
          text:"Dispatched in ${widget.homes.dispatch}" 
        ),

                         SizedBox(height: 10,),


              widget.homes.outofstock ==null ?
               Out_of_stock_box() : 

               Container(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     H1text(text: "SELECT SIZE", color: thickblack,),
                     SizedBox(height: 10,),
                     Sizes_container(),
                   ],
                 ),
               )

                 ],
              ),
            ),

           
              
              
                 ],
                 ),
               ),
                Container(
              color: whitecolor,
              child: Column(
                 children: <Widget>[
                   Container(
                     padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                     color: grey100,
                     child: H2text(text: 'CHECK DELIVERY DATE',),
                   ),
                  //  SizedBox(height: 15,),
                   Container(
                     padding: EdgeInsets.fromLTRB(10, 10, 20, 0),
                     child: Column(
                       children: <Widget>[
                         Row(
                           children: <Widget>[
                             Expanded(child: SearchInput()),
                            SizedBox(width: 40,),
                            H4text(text: 'Change',)

                           ],
                         ),
                         Row(
                           children: <Widget>[
                             Icon(Icons.motorcycle),
                             SizedBox(width: 10,),
                             H2text(text:  'Enter Pincode for Estimated Delivery Date' ,),
                           ],
                         ),

                          Row(
                           children: <Widget>[
                             Icon(Icons.timer),
                             SizedBox(width: 10,),
                             H2text(text:  'Dispatched in ${widget.homes.dispatch}' ,),
                           ],
                         ),
                       ],
                     )),
                      Container(
                     padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                     color: grey100,
                     child: Row(
                       children: <Widget>[
                         H2text(text: 'PRODUCT DETAILS',),

                         Spacer(),

                         Container(
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(8),
                             color: whitecolor,
                             border: Border.all(
                               color: grey300
                             )
                           ),
                           padding: EdgeInsets.symmetric(horizontal: 13, vertical:7),
                           child: H3text(text: 'Copy',color: Colors.blue,))
                       ],
                     ),
                   ),

                   Container(
                     padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                     color: whitecolor,
                     child: Column(
                       children: <Widget>[
                        H4text(
                          text:  'Fabric : ${widget.homes.materialtype}'
                        ),
                         SizedBox(height: 8,),

                         H4text(
                          text:  'Sleeve Length : ${widget.homes.sleevelength}'
                        ),
                         SizedBox(height: 8,),

                         H4text(
                          text:  'Pattern : ${widget.homes.pattern}'
                        ),
                         SizedBox(height: 8,),

                         H4text(
                          text:  'Multipack : ${widget.homes.multipack}'
                        ),
                         SizedBox(height: 8,),

                        
                         Row(
                           children: <Widget>[
                             Expanded(
                           child: H4text(
                               text:  'Sizes :\n${widget.homes.size}'
                                 ),
                             ),
                           ],
                         ), 

                       ],
                     ),
                   ),

                   Container(
                     child: Row(
                       children: <Widget>[
                         
                       ],
                     ),
                   )


                 ],
              )
            )

            ],
          ),
        )
    );
      
  
}
  




























  AppBar buildAppBar() {
    return AppBar(
      title: H2text(text: "${widget.homes.productname}" ),
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


class Free_Dispatch_Box extends StatelessWidget {
  const Free_Dispatch_Box({
    Key key, this.text, this.icon,
  }) : super(key: key);

  final text;
  final icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
            padding: EdgeInsets.symmetric(horizontal:10, vertical: 10),
            decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: backgroundcolor                                                                                               
           ),
        child: Row(
          children: <Widget>[
            Icon(icon),
            SizedBox(width: 10,),
            
            H2text(text: '${text}',)
                    ],
                     )),
      ],
    );
  }
}









