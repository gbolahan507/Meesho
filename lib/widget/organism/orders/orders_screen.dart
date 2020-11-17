import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/export/molecule_export.dart';
import 'package:meesho/export/organism_export.dart';
import 'package:meesho/export/others_export.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/atom/all_input/search_input.dart';
import 'package:meesho/widget/atom/text/h3.dart';
import 'package:meesho/widget/organism/homepage/mainscreen/homepage_screen.dart';
import 'package:meesho/widget/organism/orders/all_orders.dart';
import 'package:meesho/widget/organism/orders/ordermodel.dart';
import 'package:meesho/widget/organism/orders/order_button_container.dart';
import 'package:meesho/widget/organism/search/search_screen.dart';


class Orders_screen extends StatefulWidget {
  @override
  _Orders_screenState createState() => _Orders_screenState();
}

class _Orders_screenState extends State<Orders_screen> {

   int press = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Container(
        color: grey300,
        child: ListView(
          children: <Widget>[
            Container(
              color: whitecolor,
              margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
               child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     
                 children: <Widget>[
                      Icon(Icons.warning),
                       SizedBox(width: 10,),


                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,

                     children: <Widget>[
                       H1text(text: 'Your Bank details are missing', color: pinkcolor,),
                       SizedBox(height: 10,),
                       H1text(text: 'Add bank details to receive your payment', color: blackcolor,),
                       SizedBox(height: 10,),
                       
                       InkWell(
                         onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context) => Bank_page()));

                         },
                           child: Container(
                           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                           decoration: BoxDecoration(
                           color: Colors.pink[300]
                           
                           ),
                           child: H2text(text: 'Add Details',)),
                       ),


                     ],
                   )
                 ],
               ),



            ),

            Container(
              color: whitecolor,
              margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: <Widget>[
                      SearchInput(
                        prefixIcon: Icon(Icons.search, color: thickblack,),
                        hintext: 'Search by Customers, Product, or Orders'
                      ),
                      SizedBox(height: 15,),

                       Container(
                     child: Column(
                   children: <Widget>[
                      Wrap(
                    runSpacing: 6.0,
                    children: List<Widget>.generate(buttons.length, (index){
                    final Ordermodel odd = buttons[index];
                    return OrderButton_container(odd: odd,
                     
                     text: odd.text,
                     color: press ==index ? pink300 : grey300,
                     onTap: (){
                       setState(() {
                         press = index;
                       });
                     }
                                      );
                        }),
                      ),



                ],
              ),
           
                     ),

                  


                      
                   ],
                  ),
                ),

                

              Container(
                padding: EdgeInsets.only(top: 100),
                child: press == 0 ? All(): (press == 1 ? Ordered() : (press == 2 ? Shipped() :
                (press == 3 ? Delivered() :(press == 4 ? Canceled() :(press == 5 ? Exchange() :
                (press == 6 ? Return() :  Others() )))
                )
                )
                ),
              ),

                SizedBox(height: 50,),

                BrowseCatalog()
          ],
        ),
      )
    );
  }


  





























  Widget orderContainer( String text) {
   
    return Container(
            padding: EdgeInsets.symmetric(horizontal: 10,),
            child: InkWell(
    // onTap:  () => 
        child: Container(
          margin: EdgeInsets.only(right: 15, bottom: 15),
          padding: EdgeInsets.symmetric(horizontal: 5 , vertical: 10),
      decoration: BoxDecoration(
          color:  grey100,
    borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: grey300   
        )
      ),
      // margin: EdgeInsets.only(right: 10),
      child: Text(text)
            
          ),
    
  ),


            
          );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: H3text(text: 'Orders', fontsize: 20.0,),
      actions: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              ActionWidget(
                icon: Icons.search,
                onTap: () {
Navigator.push(context, MaterialPageRoute(builder: (context) => Search_Screen()));

                }
              ),
              ActionWidget(
                icon: Icons.shopping_cart,
                onTap: () {
              print('cart');
                }
              ),
            ],
          ),
        ),


      ],
    );
  }







}

class BrowseCatalog extends StatelessWidget {
  const BrowseCatalog({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context) => NavScreen()));
      },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
            color: pink300,
            child: H2text(text: 'BROWSE CATALOGS'),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            
            ),
          ],
        ),
    );
  }
}





class Ordersss extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('home'),
    );
  }
}


class Shippped extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('shipped'),
    );
  }
}
