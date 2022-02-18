// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
// import '../../../Database/distributor_database.dart';
// import '../../../util/constants.dart';

// class Distributors extends StatefulWidget {
//   const Distributors({ Key? key }) : super(key: key);

//   @override
//   _DistributorsState createState() => _DistributorsState();
// }

// class _DistributorsState extends State<Distributors> {


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
//             'Devotional Distributors',
//             style: headline6(context, color: blue),
//           )),
          
//       body: Container(
//           padding: const EdgeInsets.symmetric(horizontal:24),
//           child: ListView.builder(
//             itemCount: distributors?['distributors'].length,
//             itemBuilder: (context, index) => ListTile(
//               title: Text(distributors!['distributors'][index]['name'], style: bodyText1(context),),
//               subtitle: Text(distributors!['distributors'][index]['location'] + ', ' + distributors!['distributors'][index]['phone number'], style: subtitle2(context),),
              
//               onTap: () async {
//                 var phoneNumber = distributors!['distributors'][index]['phone number'];
//                 if (await canLaunch('tell:$phoneNumber').then((value) => true)) {
//                   launch('tel: $phoneNumber');
//                 }
//               },
//               )
//             )
//         ),    
//     );
//   }
// }