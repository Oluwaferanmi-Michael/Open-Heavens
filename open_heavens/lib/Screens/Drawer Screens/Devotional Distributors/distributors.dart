import 'package:flutter/material.dart';
import 'package:open_heavens/util/Database/distributor_database.dart';

import '../../../util/constants.dart';

class Distributors extends StatefulWidget {
  const Distributors({ Key? key }) : super(key: key);

  @override
  _DistributorsState createState() => _DistributorsState();
}

class _DistributorsState extends State<Distributors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 

      appBar: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.chevron_left_outlined)),
          backgroundColor: transparent,
          elevation: 0,
          title: Text(
            'Devotional Distributors',
            style: headline6(context, color: blue),
          )),
          
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal:24),
        child: ListView.builder(
          itemCount: devotionalDistributors.length,
          itemBuilder: (context, index) => const ListTile(
            title: Text('data'),
            subtitle: Text('locale, phonenumber'),
          )
          )
      ),
    );
  }
}