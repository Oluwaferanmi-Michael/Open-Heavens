// import 'package:flutter/material.dart';

// import '../../../util/constants.dart';

// class TopicsByMonth extends StatefulWidget {
//   const TopicsByMonth({ Key? key }) : super(key: key);

//   @override
//   _TopicsByMonthState createState() => _TopicsByMonthState();
// }

// class _TopicsByMonthState extends State<TopicsByMonth> {

//   List<String> months = [
//     'January',
//     'February',
//     'March',
//     'April',
//     'May',
//     'June',
//     'July',
//     'August',
//     'September',
//     'October',
//     'November',
//     'December'
//   ];



//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           leading: IconButton(
//               onPressed: () => Navigator.pop(context),
//               icon: const Icon(Icons.chevron_left_outlined)),
//           backgroundColor: transparent,
//           elevation: 0,
//           title: Text(
//             'Topical Readings',
//             style: headline6(context, color: blue),
//           )),
//       body: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 24),
//         height: height(1, context),
//         child: SafeArea(
//             child: ListView.builder(
//                 itemCount: months.length,
//                 itemBuilder: (context, index) => ExpansionTile(
//                     expandedAlignment: Alignment.centerLeft,
//                     childrenPadding: const EdgeInsets.only(bottom: 12),
//                     children: [
//                       ListTile(
//                         title: Text('data'),
//                       ),
//                       ListTile(
//                         title: Text('data'),
//                       ),
//                       ListTile(
//                         title: Text('data'),
//                       ),
//                       ListTile(
//                         title: Text('data'),
//                       ),
//                     ],
//                     title: Text(
//                       months[index],
//                       style: bodyText1(context),
//                     )))),
//       ),
//     );
//   }
// }