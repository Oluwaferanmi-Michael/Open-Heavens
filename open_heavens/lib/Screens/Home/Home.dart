

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_heavens/Screens/Devotional/devotionalScreen.dart';
import 'package:open_heavens/util/Widgets/drawer.dart';
import 'package:open_heavens/util/constants.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              InkWell(
                onTap: () => Navigator.pushNamed(context, '/devotional'),
                child: SizedBox(
                  width: width(1, context),
                  height: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('TODAY\'S READ', style: bodyText1(context, fontWeight: FontWeight.bold, color: red),),
                      SizedBox(
                        height: 12.sp,
                      ),
                      Text('4th January', style: headline6(context, fontWeight: FontWeight.bold),),
                      Text('THE BEGINNING OF MONTHS', style: headline6(context, fontWeight: FontWeight.bold)),

                      SizedBox(
                        height: 8.sp,
                      ),

                      Text('Ad aliquip Lorem ea est eiusmod est deserunt. Veniam sunt commodo cupidatat in culpa do esse aliquip ex amet in proident. Dolor veniam nisi minim tempor consequat irure magna anim exercitation ea. Excepteur id cupidatat exercitation quis ut amet anim fugiat excepteur. Fugiat non exercitation tempor ea ea. Excepteur dolor cillum cupidatat cillum adipisicing consectetur officia qui. Duis laborum pariatur aliquip sunt aliqua ad culpa nostrud aliqua exercitation dolor qui.', overflow: TextOverflow.ellipsis, maxLines: 2, style: subtitle2(context),
                      )
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 42,),

              SizedBox(
                width: width(1, context),
                height: 120,
                child: InkWell(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Teen\'s Open Heavens',
                        style: bodyText1(context, fontWeight: FontWeight.w600, color: blue),
                      ),

                      SizedBox(height: 12.sp,),
                      
                      Text(
                        '4th January',
                        style: headline6(context, fontWeight: FontWeight.bold),
                      ),
                      Text('THE BEGINNING OF MONTHS', style: headline6(context, fontWeight: FontWeight.bold)),
                      
                       SizedBox(
                        height: 8.sp,
                      ),
                      Text(
                      'Ad aliquip Lorem ea est eiusmod est deserunt. Veniam sunt commodo cupidatat in culpa do esse aliquip ex amet in proident. Dolor veniam nisi minim tempor consequat irure magna anim exercitation ea. Excepteur id cupidatat exercitation quis ut amet anim fugiat excepteur. Fugiat non exercitation tempor ea ea. Excepteur dolor cillum cupidatat cillum adipisicing consectetur officia qui. Duis laborum pariatur aliquip sunt aliqua ad culpa nostrud aliqua exercitation dolor qui.',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: subtitle2(context),
                      )
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 42,
              ),

              InkWell(
                enableFeedback: false,
                onTap: () {},
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  width: width(1, context),
                  // margin: const EdgeInsets.only(bottom: 42),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24, top: 24, bottom: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Bible in a year', style: headline6(context, fontWeight: FontWeight.bold),),
                        Text('Guide to finishing the Bible', style: subtitle2(context),),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: black
                    ),
                    borderRadius: BorderRadius.circular(16)
                  ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}