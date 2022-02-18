// import 'package:flutter/material.dart';
// import 'package:open_heavens/util/constants.dart';


// class TopicalReadings extends StatefulWidget {
//   const TopicalReadings({ Key? key }) : super(key: key);

//   @override
//   _TopicalReadingsState createState() => _TopicalReadingsState();
// }

// class _TopicalReadingsState extends State<TopicalReadings> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       appBar: AppBar(
//         leading: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.chevron_left_outlined)),
//         backgroundColor: transparent,
//         elevation: 0,
//         title: Text('Topical Readings', style: headline6(context, color: blue),)
//       ),

      
//       body: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 24),
//         height: height(1, context),
//         child: SafeArea(
//           child: ListView.builder(
//             itemCount: 32,
//             itemBuilder: (context, index) => ExpansionTile(
//               expandedAlignment: Alignment.centerLeft,
//               childrenPadding: EdgeInsets.only(bottom: 12),
//               children: [
//                 ListTile(
                  
//                   title: Text('data'),
//                 ),
//                 ListTile(
//                         title: Text('data'),
//                       ),
//                       ListTile(
//                         title: Text('data'),
//                       ),
//                       ListTile(
//                         title: Text('data'),
//                       ),
//               ],
//               title: Text('Concecration and the Holy Spirit', style: bodyText1(context),))
//             )
//         ),
//       ),
//     );
//   }
// }