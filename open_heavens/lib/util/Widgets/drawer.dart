import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_heavens/util/constants.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

      elevation: 0,
      backgroundColor: white,
      child: Padding(
        padding: const EdgeInsets.only(left: 24, top: 72, bottom: 42),
        child: ListView(
          children: [
            // ListTile(
            //   title: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text('TODAY\'S READ', style: headline6(context)),
            //       Text('4th january', style: headline6(context),)
            //     ],
            //   ),
            // ),

            // const SizedBox(height: 32,),

            ListTile(
              onTap: () => Navigator.pushNamed(context, '/topicalReadings'),
              title: Text('Topical Readings', style: bodyText2(context),),),

            // const SizedBox(
            //   height: 32,
            // ),

            ListTile(
              onTap: () => Navigator.pushNamed(context, '/topicsByMonth'),
              title: Text('Topics by Month', style: bodyText2(context),),),

            SizedBox(height: 450.h,),

            ListTile(
              title: Text(
                'Credits',
                style: bodyText2(context),
              ),
            ),

            // const SizedBox(height: 32,),

            ListTile(
              onTap: () => Navigator.pushNamed(context, '/distributors'),
              title: Text(
                'Devotional Distributors',
                style: bodyText2(context),
              ),
            ),

          ],
        ),
      ),
    );
  }
}