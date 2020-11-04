import 'package:flutter/material.dart';

class SliderPage extends StatelessWidget {

  SliderPage({
   this.title, this.image, this.subtitle});

  final String title, image, subtitle;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 24,vertical: 220),
      child: Container(
        height: 220,
        width: double.infinity,
        child: Image.asset('$image')),
      
    );
  }
}
