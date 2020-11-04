import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/organism/category/categorymodel.dart';


class Select_category extends StatelessWidget {
  const Select_category({
    Key key, this.popular, this.ethnic, this.western, this.men, this.kids, this.home_kitchen, this.beauty_Heaalth, this.jewellery, this.bags_Footware, this.electronics, this.text, this.image,
  }) : super(key: key);


  final Popular  popular;
  final Ethnic   ethnic;
  final Western  western;
  final Men      men;
  final Kids     kids;
  final Home_kitchen     home_kitchen;
  final Beauty_Heaalth   beauty_Heaalth;
  final Jewellery        jewellery;
  final Bags_Footware    bags_Footware;
  final Electronics      electronics;
  final  String text;
  final String image;



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey
                  ),
                  color: whitecolor,
                  shape: BoxShape.circle
                ),
                child:
                Image.asset(image, fit: BoxFit.cover,),
              ),
              H2text(text: '${text}',)
            ],
          ),
        ],
      ),
    );
  }
}