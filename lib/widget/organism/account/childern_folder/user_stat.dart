import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';




class UserStat extends StatelessWidget {
  const UserStat({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              H2text(text:'0'),
              H2text(text: 'Helpful',)

            ],
          ),
            Column(
            children: <Widget>[
              H2text(text:'0'),
              H2text(text: 'Followers',)

            ],
          ),
            Column(
            children: <Widget>[
              H2text(text:'0'),
              H2text(text: 'Following',)

            ],
          )
        ],
        
      ),
    );
  }
}