import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/organism/search/searchmodel.dart';


 class Popular_search_container extends StatelessWidget {
    
    Popular_search_container({this.onTap, this.text, this.search});
   final onTap;
   final Searchs search;
   final text;
   @override
   Widget build(BuildContext context) {

    return InkWell(
      onTap:  onTap,
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
      
    );
    
  }
}