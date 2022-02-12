import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_heavens/util/Widgets/appBar.dart';
import 'package:open_heavens/util/constants.dart';


class Hymns extends StatefulWidget {
  const Hymns({ Key? key }) : super(key: key);

  @override
  _HymnsState createState() => _HymnsState();
}

class _HymnsState extends State<Hymns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: transparent,
        title: Text('Hymns', style: headline6(context, fontWeight: FontWeight.bold, color: black),),
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
                  borderRadius: BorderRadius.circular(10.w)
                ),
                child: TextFormField(
                  cursorColor: blue,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search_outlined, color: blue,),
                    // isCollapsed: true,s
                    hintText: 'Search',
                    border: InputBorder.none),
                ),
              ),

              SizedBox(height: 16.h,),
      
              SizedBox(
                height: height(1, context),
                child: ListView.builder(
                  itemCount: 25,
                  itemBuilder: (context, index) => ListTile(
                    title: Text('All to Jesus I surrender', style: bodyText2(context),
                  ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}