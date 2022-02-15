import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../util/constants.dart';

class Distributors extends StatefulWidget {
  const Distributors({ Key? key }) : super(key: key);

  @override
  _DistributorsState createState() => _DistributorsState();
}

class _DistributorsState extends State<Distributors> {

  

List distributors = [];

// reading inhouse Json data for devotional distributors
  Future<void> readDistributorsJson() async {
    final response = await rootBundle
        .loadString('open_heavens/lib/Database/distributor_database.json');

    final data = await jsonDecode(response);

    setState(() {
      distributors = data['distributors'];
    });


  }

  @override
  void initState() {
    readDistributorsJson();
    super.initState();
  }

  @override
  void dispose() {
    readDistributorsJson();
    super.dispose();
  }

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
          itemCount: distributors.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(distributors[index]['name'], style: bodyText1(context),),
            subtitle: Text(distributors[index]['location'] + ', ' + distributors[index]['location'], style: subtitle2(context),),
            
            onTap: () {},
            )
          )
      ),
    );
  }
}