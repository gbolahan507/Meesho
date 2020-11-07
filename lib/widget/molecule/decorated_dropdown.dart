import 'package:flutter/material.dart';
import 'package:meesho/util/colors.dart';




class Decorated_dropDown extends StatefulWidget {
  @override
  _Decorated_dropDownState createState() => _Decorated_dropDownState();
}

class _Decorated_dropDownState extends State<Decorated_dropDown> {


   String _selectedFruit;

  static const _fruits = [
  'Male',
  'Female',
  'Others',
];
  @override
  Widget build(BuildContext context) {
    return   Container(
       child: DropdownButtonHideUnderline(
  child: InputDecorator(
  decoration: InputDecoration(
        labelText: 'Gender',
        labelStyle: Theme.of(context).primaryTextTheme.caption.copyWith(color: pink300, fontSize: 16), 
        border: const OutlineInputBorder(),
  ),
  child: DropdownButtonHideUnderline(
        child: DropdownButton(
    // hint: Text(''),
    isExpanded: true,
    isDense: true, // Reduces the dropdowns height by +/- 50%
    icon: Icon(Icons.keyboard_arrow_down),
    value: _selectedFruit,
    items: _fruits.map((item) {
        return DropdownMenuItem(
          value: item,
          child: Text(item),
        );
    }).toList(),
    onChanged: (selectedItem) => setState(() => _selectedFruit = selectedItem,
        ),
  ),
  )
  )
),
      
      );
  }
}

