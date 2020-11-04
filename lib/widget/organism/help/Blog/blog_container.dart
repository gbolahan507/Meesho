import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';



class Blog_containers extends StatelessWidget {
  const Blog_containers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
      color: whitecolor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
          blurRadius: 10,
          color: grey100.withOpacity(0.5)
            
          )
        ]
      ),
      height: 120,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: EdgeInsets.only(top: 10),
      child: Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              height: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network('https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80')),
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
               child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:5, bottom: 10),
                  child: H4text(text: 'Use Facebook', ),
                ),
                H2text(text: 'How to advertise your product on Facebook',),
               //  SizedBox(height: 38,),
               Spacer(),
                H1text(
                  text: '2020 - 04 - 08  10:30' ),

              ],
            ),
          )
       
        ]
      )
    );
  }
}
