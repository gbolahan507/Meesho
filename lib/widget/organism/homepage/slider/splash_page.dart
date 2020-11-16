import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/util/constants.dart';






class SplashSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:20, bottom: 20),
      child: Container(
          height: 200,
          width: double.infinity,
          child: Carousel(
            dotSize: 4.0,
            dotSpacing: 15.0,
            dotColor: Colors.grey,
            dotIncreasedColor: pink300,
            indicatorBgPadding: 5.0,
            dotBgColor: Colors.transparent,
            borderRadius: false,
            moveIndicatorFromBottom: 180.0,
            noRadiusForIndicator: true,
            images: slides.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.white),
                      child: SplashSection(
                        context,
                        image: i['image'],
                      ));
                },
              );
            }).toList(),
          )),
    );
  }


  

  Widget SplashSection(context, {image, title, desc}) {
    return Container(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30, top: 0, left: 30, right: 30),
                child: new Container(
                  child: new Image.asset(
                    '$image',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
          );
  }
}



  const List<Map> slides = [
  {

    'image': 'images/card.png'
  },
  {
  
    'image': 'images/card.png'
  },
  {
  
    'image': 'images/card.png'
  },
];