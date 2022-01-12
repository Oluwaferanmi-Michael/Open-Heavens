import 'package:flutter/material.dart';
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
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('TODAY\'S READ', style: headline6(context)),
                  Text('4th january', style: headline6(context),)
                ],
              ),
            ),

            const SizedBox(height: 32,),

            ListTile(
              onTap: () {},
              title: Text('Topical Readings', style: bodyText2(context),),),

            // const SizedBox(
            //   height: 32,
            // ),

            ListTile(title: Text('Topics by Month', style: bodyText2(context),),),


            ListTile(
              title: Text(
                'Credits',
                style: bodyText2(context),
              ),
            ),

            // const SizedBox(height: 32,),

            ListTile(
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