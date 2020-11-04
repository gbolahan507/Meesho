import 'package:flutter/material.dart';


class Popmenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child:PopupMenuButton(
  icon: Icon(Icons.more_vert, color: Colors.black, size: Theme.of(context).iconTheme.size,),
  itemBuilder: (context) => [
    PopupMenuItem(
      value: 1,
      child: ListTile(
        title: Text("Open Source Licenses"),
      )
    ),
    PopupMenuItem(
      value: 1,
      child: ListTile(
        title: Text("Terms and Conditions"),
      )
    ),
    PopupMenuItem(
      value: 1,
      child: ListTile(
        title: Text("Privacy Policy"),
      )
    ),
  ],
),
    );
  }
}