// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:meesho/widget/molecule/search/popular_search_container.dart';
// import 'package:meesho/widget/molecule/search/searchmodel.dart';


// class Gridview extends StatefulWidget {
//   @override
//   _GridviewState createState() => _GridviewState();
// }

// class _GridviewState extends State<Gridview> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        appBar: AppBar(centerTitle: true, title: Text('grid view'),),
//        body: Container(
//          child: StaggeredGridView.countBuilder(
//            crossAxisCount: 4,
//            itemBuilder: (context, index){
//              return Popular_search_container(search:searchss[index],) ;
//            },
//            staggeredTileBuilder: (int index) =>
//       new StaggeredTile.count(2, index.isEven ? 2 : 1),
//            mainAxisSpacing: 4.0,
//           crossAxisSpacing: 4.0,

//            )
//        ),
//     );
//   }
// }