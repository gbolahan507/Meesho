import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';





class Faq_container extends StatelessWidget {
  const Faq_container({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
      color: whitecolor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
          blurRadius: 5,
          color: grey100.withOpacity(0.10)
            
          )
        ]
      ),
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal:20),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                 height: 50,
                 child: Image.network(
                   'https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80',
                    fit: BoxFit.cover,
                    width: 50,
                    ),
                           ),
                    SizedBox(width: 20,),

                     Expanded(
                       child: Column(
                    children: <Widget>[
                       H2text(text: 'Covid and Meesho',),
                       SizedBox(height: 10,),
                      //  Spacer(),
                       H4text(text: 'Corona virus and Released Measuere',),

                       
                    ],
                  ),
                     )
            ],
          ),
        ],
      ),
    );
  }
}