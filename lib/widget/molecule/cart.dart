import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/atom/button_filled.dart';
import 'package:meesho/widget/atom/text/h3.dart';

class Cart_screen extends StatefulWidget {
  @override
  _Cart_screenState createState() => _Cart_screenState();
}

class _Cart_screenState extends State<Cart_screen> {
  int _selectedindex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: thickblack,),
        backgroundColor: Colors.white,
      title: H3text(text: 'Cart'),

      ),

      body: Container(
        color: grey100,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical:20),
              child: H2text(text:  'SELECT PAYMENT METHOD',),
            ),

            Container(
              child: Column(
              children: <Widget>[
                InkWell(
                  onTap: (){
                    setState(() {
                      _selectedindex = 1;
                    });
                  },
                   child: Container(
                   padding: const EdgeInsets.symmetric(horizontal: 20, vertical:10),
                   color: whitecolor,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.save),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            H2text(text: 'Online'),
                            SizedBox(height: 5,),
                            H1text(text: 'Debit Card, Credit Card, Net Banking, UPI',),

                          ],
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor:  _selectedindex ==1 ? pink300 : grey100
                        )
                      ],
                    ),
                  ),
                ),

                  Column(
                  children: <Widget>[
                    InkWell(
                      onTap: (){
                        setState(() {
                          _selectedindex = 2;
                        });
                      },
                         child: Container(
                        color: whitecolor,
                        margin: EdgeInsets.only(top:5),
                       padding: const EdgeInsets.symmetric(horizontal: 20, vertical:10),
                        child: Row(
                          children: <Widget>[
                              Icon(Icons.save),
                             SizedBox(width: 10,),

                            H2text(text: 'Cash on Delivery'),
                            Spacer(),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor:_selectedindex ==2 ?  pink300 : grey100
                            )
                          ],
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: (){
                        setState(() {
                          _selectedindex = 3;
                        });
                      },
                        child: Container(
                        color: whitecolor,
                        margin: EdgeInsets.only(top:5),
                         padding: const EdgeInsets.symmetric(horizontal: 20, vertical:10),
                          child: Row(
                          children: <Widget>[
                            Icon(Icons.save),
                             SizedBox(width: 10,),

                            Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                H2text(text: 'Paytm',),
                                SizedBox(height: 5,),

                                H1text(text: 'Earn Upto #200 Money back', color: Colors.green,),
                                SizedBox(height: 5,),

                                H1text(text: "Wallet, Debit, Credit, Card Net Banking UPI",)

                              ],
                            ),
                            Spacer(),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: _selectedindex==3 ? pink300 : grey100
                            )
                          ],
                        ),
                      ),
                    ),

                      Container(
                       padding: const EdgeInsets.symmetric(horizontal: 20, vertical:10),
                        color: whitecolor,
                      margin: EdgeInsets.only(top:5),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              H2text(text: 'Product Charges',),
                              Spacer(),
                             H2text(text: '#500',),

                            ],
                          ),

                          SizedBox(height: 10,),

                          Row(
                            children: <Widget>[
                              H2text(text: 'Shipping Charges',),
                              Spacer(),
                             H2text(text: '#500',),

                            ],
                          ),
                          SizedBox(height: 10,),


                          Row(
                            children: <Widget>[
                              H2text(text: '1st Order Discount',),
                              Spacer(),
                             H2text(text: '#500',),

                            ],
                          ),
                        ],
                      ),
                    ),
                      
                      Container(
                        color: Colors.pink[50],
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical:10),
                        child: Row(
                          children: <Widget>[
                            H2text(text: 'Order Total', color: pink300,),
                            Spacer(),
                            H2text(text: "2000", color: pink300,),
                            
                          ],
                        ),
                      ),

                        Container(
                        margin: EdgeInsets.only(top:5),
                        color: whitecolor,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical:15),
                        child: Row(
                          children: <Widget>[
                            H1text(text: 'Supplier',),
                            Spacer(),
                            H2text(text: "KAY DEE CREATIONS"),
                            
                          ],
                        ),
                      ),


                         Container(
                        margin: EdgeInsets.only(top:10),
                        color: whitecolor,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical:10),
                        child: Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              color: Colors.grey,
                              height: 100,
                              width: 80,
                              child: Image.asset('images/girl.png', fit: BoxFit.contain,),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  H1text(text: "New Classic Men Tshirts" , color: thickblack,),
                                  SizedBox(height: 5,),
                                  H1text(text: "#500"),
                                  SizedBox(height: 15,),

                                  H1text(text: "Size"),
                                  SizedBox(height: 15,),
                                  H1text(text: "#Quantity"),


                                ],
                              ),
                            ),
                            Spacer(),

                            Container(
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.delete),
                                  Icon(Icons.delete),
                                  Icon(Icons.delete),
                                ],
                              ),
                            ),
                            
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top:10),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical:10),
                        color: whitecolor,
                        child: Column(
                          children: <Widget>[
                            H2text(text: 'Your Safety, Our Priority', fontsize: 20.0, color: Colors.purple,),
                            SizedBox(height: 10,),
                            
                            H2text(text: 'We make sure that your package',),
                            SizedBox(height: 5,),

                            H2text(text: 'is safe at every point of contact',),

                          ],
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ButtonFilled(
                          width: double.infinity,
                          text: 'PROCEED'
                        ),
                      )

                      





                  ],
                  )

          ],
        ),
      ),

          ]
        )
      )

    );
  }
}