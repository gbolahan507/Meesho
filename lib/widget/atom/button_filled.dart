import 'package:flutter/material.dart';
import 'package:meesho/util/colors.dart';

class ButtonFilled extends StatelessWidget {
  final text;
  final width;
  final action;
  final color;
  final height;
  final Color textColor;

  ButtonFilled({Key key, this.height, this.action, this.width, this.text, this.color, this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
          child: Container(
        height: height?? 48.0,
        width: width ?? double.infinity,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.0),
                topRight: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
                bottomLeft: Radius.circular(5.0)
                ),
            color: color?? pink300
          ),
          alignment: Alignment.center,
          child: Text(
            "$text",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: textColor ?? Colors.white, fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'OpenSans' ),
          ),
        ),
      ),
    );
  }
}






class SpecialButtonFilled extends StatelessWidget {
  final text;
  final width;
  final action;
  final color;
  final Color textColor;

  SpecialButtonFilled({Key key, this.action, this.width, this.text, this.color, this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      width: width ?? double.infinity,
      child: new FlatButton(
        onPressed: action,
        padding: EdgeInsets.all(0.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.0),
                topRight: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
                bottomLeft: Radius.circular(5.0)),
            color: color?? Color(0xFF2D6CDF)
          ),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/publish.png'),
              Text(
                "$text",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: textColor ?? Colors.white, fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'OpenSans' ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

