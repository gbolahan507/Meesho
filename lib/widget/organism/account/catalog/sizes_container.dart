import 'package:flutter/material.dart';
import 'package:meesho/util/colors.dart';


class Sizes_container extends StatefulWidget {
  @override
  _Sizes_containerState createState() => _Sizes_containerState();
}

class _Sizes_containerState extends State<Sizes_container> {

  

List <String> buttons = [
  'X', 'L', 'XL', 'XXL'
];

int selectedindex = 0;


  @override
  Widget build(BuildContext context) {
    return Container(
     height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: buttons.length,
        itemBuilder: (context, index) {
          // final Sizesbox sizes = buttons[index];
          return buildText(index,) ;
        } 
        ),
      
    );
  }


  

  Widget buildText(int index,) {
    return InkWell(
      onTap: (){
        setState(() {
          selectedindex = index;
        });
      },
          child: Container(
            width: 50,
        decoration: BoxDecoration(
            color:  grey100,
      borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: selectedindex == index ?
             pinkcolor : grey300   
          )
        ),
        margin: EdgeInsets.only(right: 10),
        child: Center(
          child: Text((buttons[index]),
                
              ),
        ),
      ),
    );
  }
}