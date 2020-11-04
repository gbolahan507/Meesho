import 'package:flutter/material.dart';


class Search_landing_page extends StatefulWidget {
    Search_landing_page({this.text});
  final  text;
  @override
  _Search_landing_pageState createState() => _Search_landing_pageState();
}

class _Search_landing_pageState extends State<Search_landing_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.text) ,
        centerTitle: true,
      ),
    );
  }
}