import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:open_heavens/util/Widgets/drawer.dart';
import 'package:open_heavens/util/constants.dart';


class Bible extends StatefulWidget {
  const Bible({ Key? key }) : super(key: key);

  @override
  _BibleState createState() => _BibleState();
}

class _BibleState extends State<Bible> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: true,
      drawer: const CustomDrawer(),
      appBar: AppBar(
         
        elevation: 0,
        backgroundColor: grey,
        bottom: PreferredSize(
          child: Container(
            padding: const EdgeInsets.all(24),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed('/selectBook'),
                  child: Container(
                    width: width(2, context),
                    child: const Text('Genesis 1'),
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: white,
                        // border: Border.all(color: black, width: 1),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),

                Container(
                  // width: width(2, context),
                  child: const Text('KJV'),
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                  decoration: BoxDecoration(
                      color: white,
                      // border: Border.all(color: black, width: 1),
                      borderRadius: BorderRadius.circular(8)),
                ),
                
              ],
            ),
          ),
          preferredSize: Size.fromHeight(72.h),
        ),
      ),

      body: Container(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 12),
        child: SingleChildScrollView(
          child: Text('deserunt occaecat duis laboris. Velit anim voluptate excepteur qui.', style: bodyText(context))),
      ),
    );
  }
}