import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:meesho/util/colors.dart';


class Testing3 extends StatefulWidget {
  @override
  _Testing3State createState() => _Testing3State();
}

class _Testing3State extends State<Testing3> {
  // int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('the use of row'),

      ),
      body: Container(
        child: Column(
          children: <Widget>[
            
SizedBox(
  height: 200.0,
  width: 350.0,
  child: Carousel(
    images: [
      NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
      NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
      NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
    
    ],
    dotSize: 7.0,
    dotSpacing: 15.0,
    dotColor: pink300,
    indicatorBgPadding: 0.0,
    dotBgColor: whitecolor,

    // noRadiusForIndicator: true,
// borderRadius: false,

    // dotBgColor: Colors.purple.withOpacity(0.5),
    // borderRadius: true,

  )
),

          ]
        )
      )
      );
  }
}
