import 'package:flutter/material.dart';
import 'package:meesho/util/colors.dart';



class H1text extends StatelessWidget {
  const H1text({
    Key key, this.text, this.fontweight, this.fontsize, this.color, this.allignment, this.height, this.maxlines, this.overflow, this.softWrap,
  }) : super(key: key);

  final text;
  final fontweight;
  final color;
  final allignment;
  final double fontsize;
  final double height;
  final maxlines;
  final overflow;
  final softWrap;

  @override
  Widget build(BuildContext context) {
    return Align(alignment: allignment ?? Alignment.centerLeft,
          child: Text('$text', style: TextStyle(
         color: color ?? greycolor,
         fontSize: fontsize ??   14.0,
         fontWeight: fontweight ?? FontWeight.normal,
         fontFamily: 'OpenSans',
         height: height,
      ),
      maxLines: maxlines,
      overflow: overflow,
      
      ),
    );
  }
}