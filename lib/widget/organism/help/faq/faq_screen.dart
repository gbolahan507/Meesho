import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/organism/help/faq/faq_container.dart';


class Faq_page extends StatefulWidget {
  @override
  _Faq_pageState createState() => _Faq_pageState();
}

class _Faq_pageState extends State<Faq_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Container(
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 15,
              itemBuilder: (context, index){
                return Faq_container();
              }
              
              ),
          ),
        ],
      ),
      
    );
  }
}




