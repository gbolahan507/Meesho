import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:meesho/util/colors.dart';





class CustomSwitchs extends StatelessWidget {
  const CustomSwitchs({
    Key key,
    @required this.isSwitched, this.onpressed,
  }) : super(key: key);

  final bool isSwitched;
  final Function onpressed;

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      height: 20,
      width: 40,
      value: isSwitched,
      toggleSize: 15.0,
      activeColor:pinkcolor, 
      onToggle: onpressed,
    );
  }
}


              // bool isSwitched = false;
            // CustomSwitchs(
            //   isSwitched: isSwitched,
            //   onpressed : (value){
            //       setState(() {
            //      isSwitched = value;
            //       });
            //     };
            //   
            //   )

