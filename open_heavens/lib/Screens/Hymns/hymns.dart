import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:open_heavens/Screens/Hymns/hymn_page_components.dart';
import 'package:open_heavens/Services/api_methods.dart';
import 'package:open_heavens/Services/providers.dart';
import 'package:open_heavens/util/Widgets/drawer.dart';
import 'package:open_heavens/util/constants.dart';

import '../../Models/hymn_model.dart';


class Hymns extends StatefulWidget {
  const Hymns({ Key? key }) : super(key: key);

  @override
  _HymnsState createState() => _HymnsState();
}

class _HymnsState extends State<Hymns> {
  // late Future<HymnModel> fetchHymns;

  // @override
  // void initState() {
  //   // fetchHymns = ApiCalls.fetchHymns();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: transparent,
        // title: Text('Hymns', style: headline6(context, fontWeight: FontWeight.bold, color: black),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [

              SizedBox(
                height: 24.h,
              ),


              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  border: Border.all(color: blue, width: 1),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: TextFormField(
                  cursorColor: blue,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search_outlined, color: blue,),
                    // isDense: true,
                    // isCollapsed: true,
                    hintText: 'Search',
                    border: InputBorder.none),
                ),
              ),

              SizedBox(height: 16.h,),
      
              SizedBox(
                height: height(1, context),
                child: Consumer(
                  builder: (context, ref, child) {
                    return ref.watch(
                      hymnProvider
                    ).when(
                      data: (HymnModel data) {
                        return ListView.builder(
                          itemCount: data.hymns!.length,
                          itemBuilder: (context, index) => ListTile(
                            title: Text(data.hymns![index].title!)
                          ));
                      },
                      error: (err, stackTrace) {
                        return Center(child: Text(err.toString()));
                      },
                      loading: () => const Center(child: CircularProgressIndicator.adaptive(),)
                      );
                  })
              )
            ],
          ),
        ),
      ),
    );
  }
}