import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:open_heavens/Models/user_model.dart';
import 'package:open_heavens/util/Widgets/drawer.dart';
import 'package:open_heavens/util/constants.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final user = Hive.box('user').getAt(0) as UserModel;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: true,
      primary: true,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
      
      
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Good Day, ${user.name}',
                        style: headerCaptions(context)),
                    Text('February 16th',
                    style: headerCaptions(context))
                  ],
                ),
      
                SizedBox(height: 12.h,),
      
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Daily Devotional',
                        style: secondaryHeader(context)),
                    
                    Text('2022', style: TextStyle(color: black, fontWeight: FontWeight.w600, fontSize: 16.sp))],
                ),
      
                SizedBox(
                  height: 24.h,
                ),
      
                InkWell(
                  onTap: () => Navigator.pushNamed(context, '/devotional'),
                  child: Container(
                    decoration: BoxDecoration(
                      color: grey,
                      borderRadius: BorderRadius.circular(8)
                    ),
                    height: 178.h,
                    width: width(1, context),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        
                        Text('The Beginning of Months'.toUpperCase(),
                            style: primaryHeader(context, fontWeight: FontWeight.bold)),
                       
      
                        SizedBox(
                          height: 8.sp,
                        ),
      
                        Text('Ad aliquip Lorem ea est eiusmod est deserunt. Veniam sunt commodo cupidatat in culpa do esse aliquip ex amet in proident. Dolor veniam nisi minim tempor consequat irure magna anim exercitation ea. Excepteur id cupidatat exercitation quis ut amet anim fugiat excepteur. Fugiat non exercitation tempor ea ea. Excepteur dolor cillum cupidatat cillum adipisicing consectetur officia qui. Duis laborum pariatur aliquip sunt aliqua ad culpa nostrud aliqua exercitation dolor qui.', overflow: TextOverflow.ellipsis, maxLines: 2,
                        style: secondaryCaptions(context)
                        )
                      ],
                    ),
                  ),
                ),
      
                SizedBox(height: 24.h,),
      
                InkWell(
                  onTap: () => Navigator.pushNamed(context, '/devotional'),
                  child: Container(
                    decoration: BoxDecoration(
                        color: grey, borderRadius: BorderRadius.circular(8)),
                    height: 178.h,
                    width: width(1, context),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
      
                        Expanded(
                          child: Text('Teens Open Heavens',
                              style: bodyText2(context)),
                        ),
      
                        
                        Text(
                          'THE BEGINNING OF MONTHS',
                          style: primaryHeader(context,
                                fontWeight: FontWeight.bold)
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'Ad aliquip Lorem ea est eiusmod est deserunt. Veniam sunt commodo cupidatat in culpa do esse aliquip ex amet in proident. Dolor veniam nisi minim tempor consequat irure magna anim exercitation ea. Excepteur id cupidatat exercitation quis ut amet anim fugiat excepteur. Fugiat non exercitation tempor ea ea. Excepteur dolor cillum cupidatat cillum adipisicing consectetur officia qui. Duis laborum pariatur aliquip sunt aliqua ad culpa nostrud aliqua exercitation dolor qui.',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: secondaryCaptions(context)
                        )
                      ],
                    ),
                  ),
                ),
      
                SizedBox(
                  height: 24.h,
                ),
      
                InkWell(
                  onTap: () => Navigator.pushNamed(context, '/devotional'),
                  child: Container(
                    height: 178.h,
                    decoration: BoxDecoration(
                        color: grey, borderRadius: BorderRadius.circular(8)),
                    width: width(1, context),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Bible in a year',
                          style: primaryHeader(context,
                                fontWeight: FontWeight.bold)
                        ),
                        SizedBox(
                          height: 8.sp,
                        ),
                        Text(
                          'Daily guide to Bible Study',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: secondaryCaptions(context)
                        )
                      ],
                    ),
                  ),
                ),
      
                // SizedBox(
                //   height: 8.h,
                // ),
      
                // Center(
                //   child: SizedBox(
                //     width: 48.w,
                //     child: Image.asset('assets/images/logoBlue.png')),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}