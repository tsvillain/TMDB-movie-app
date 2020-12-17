// import 'package:flutter/material.dart';
// import 'package:tmdb/model/movie.dart';

// class MovieDescription extends StatelessWidget {
//   final Movie movie;
//   MovieDescription({@required this.movie});
//   final List<String> menu = ['Action', 'Biograpgy', 'Drama'];
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.transparent,
//       ),
//       extendBodyBehindAppBar: true,
//       body: SingleChildScrollView(
//         child: Container(
//           width: size.width,
//           child: Column(
//             children: [
//               Container(
//                 height: size.height * 0.35,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(50),
//                       // bottomRight: Radius.circular(50),
//                     ),
//                     image: DecorationImage(
//                       image: movie.imgURL,
//                       fit: BoxFit.cover,
//                     )),
//               ),
//               Container(
//                 width: size.width,
//                 padding: EdgeInsets.all(25),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.max,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     ListTile(
//                       contentPadding: EdgeInsets.all(0),
//                       title: Text("${movie.name}"),
//                       subtitle: Row(
//                           mainAxisSize: MainAxisSize.max,
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: ['2019', '15+', '2h 32min']
//                               .map((e) => Padding(
//                                     padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
//                                     child: Text('$e'),
//                                   ))
//                               .toList()),
//                       trailing: IconButton(
//                         icon: Icon(Icons.favorite),
//                         onPressed: () {},
//                       ),
//                     ),
//                     Wrap(
//                       children: menu
//                           .map((e) => Padding(
//                                 padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
//                                 child: Chip(label: Text('$e')),
//                               ))
//                           .toList(),
//                     ),
//                     SizedBox(height: 18),
//                     Column(
//                       mainAxisSize: MainAxisSize.min,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Plot Summary',
//                           style: Theme.of(context).textTheme.headline6,
//                         ),
//                         SizedBox(height: 10),
//                         Text('sadsd sd sd s d s ds d s d sd sdsdsd s d',
//                             style: Theme.of(context).textTheme.caption),
//                       ],
//                     ),
//                     SizedBox(height: 18),
//                     Column(
//                       mainAxisSize: MainAxisSize.min,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Cast & Crew',
//                           style: Theme.of(context).textTheme.headline6,
//                         ),
//                         SizedBox(height: 10),
//                         SingleChildScrollView(
//                           scrollDirection: Axis.horizontal,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               AssetImage('assets/img/bg.jpg'),
//                               AssetImage('assets/img/bg.jpg'),
//                               AssetImage('assets/img/bg.jpg'),
//                               AssetImage('assets/img/bg.jpg'),
//                               AssetImage('assets/img/bg.jpg'),
//                             ]
//                                 .map((e) => Container(
//                                       width: size.width / 4,
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Column(
//                                         mainAxisSize: MainAxisSize.max,
//                                         children: [
//                                           CircleAvatar(
//                                             backgroundImage: e,
//                                             radius: 40,
//                                           ),
//                                           SizedBox(height: 10),
//                                           Text(
//                                             'Tekeshwar Singh',
//                                             maxLines: 2,
//                                             textAlign: TextAlign.center,
//                                             overflow: TextOverflow.clip,
//                                             style: Theme.of(context)
//                                                 .textTheme
//                                                 .subtitle1,
//                                           ),
//                                           SizedBox(height: 8),
//                                           Text(
//                                             'Director',
//                                             maxLines: 2,
//                                             textAlign: TextAlign.center,
//                                             overflow: TextOverflow.clip,
//                                             style: Theme.of(context)
//                                                 .textTheme
//                                                 .caption,
//                                           ),
//                                         ],
//                                       ),
//                                     ))
//                                 .toList(),
//                           ),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
