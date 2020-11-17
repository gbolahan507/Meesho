import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class ActionWidget extends StatelessWidget {
  const ActionWidget({
    Key key, this.icon, this.onTap, this.padding,
  }) : super(key: key);

  final  icon;
  final onTap;
  final padding;


  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: padding ?? const EdgeInsets.only(right: 24),
    child: InkWell(
      onTap: onTap,
      child: Icon(icon, color: Colors.black,)),
    );
  }
}

