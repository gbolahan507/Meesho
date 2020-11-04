import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/organism/help/Blog/blog_container.dart';
import 'package:meesho/widget/organism/help/faq/faq_container.dart';


class Blog_page extends StatefulWidget {
  @override
  _Blog_pageState createState() => _Blog_pageState();
}

class _Blog_pageState extends State<Blog_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: grey100,
      child: ListView(
        children: <Widget>[
          Container(
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index){
                return Blog_containers();
              }
              
              ),
          ),
        ],
      ),
      
    );
  }
}




