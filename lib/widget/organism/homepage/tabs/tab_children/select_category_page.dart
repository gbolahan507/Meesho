import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';



class Category_Page extends StatelessWidget {
  const Category_Page({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      color: whitecolor,
      borderRadius: BorderRadius.circular(5),
      boxShadow: [
     BoxShadow(
       offset: Offset(0, 5),
       blurRadius: 5,
       color: Colors.grey.withOpacity(0.5)
     )
                  ]
     
      ),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: <Widget>[
          H2text(
            allignment: Alignment.center,
            text: 'Select a category you would like to try', fontweight: FontWeight.bold,),
             
            SizedBox(height: 20,),
             

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Select_category(),
                Select_category(),
                Select_category(),


              ],
            ),
            SizedBox(height: 20,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Select_category(),
                Select_category(),
                Select_category(),


              ],
            ),
        ],
      ),
    );
  }
}







class Select_category extends StatelessWidget {
  const Select_category({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey
              ),
              color: whitecolor,
              shape: BoxShape.circle
            ),
            child:
            Image.asset('images/girl.png',),
          ),
          H2text(text: 'Saree',)
        ],
      ),
    );
  }
}

