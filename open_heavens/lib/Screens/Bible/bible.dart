import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_heavens/Models/passage_model.dart';
import 'package:open_heavens/Services/api_methods.dart';

import 'package:open_heavens/util/Widgets/drawer.dart';
import 'package:open_heavens/util/constants.dart';


class Bible extends StatefulWidget {
  final String? verseBeginning;
  final String? verseEnd;
  const Bible({ Key? key, this.verseBeginning, this.verseEnd,}) : super(key: key);

  @override
  _BibleState createState() => _BibleState();
}

class _BibleState extends State<Bible> {
  late Future<Passage> callPassage;

  @override
  void initState() {
    callPassage = ApiCalls.showPassage(verseBeginning: widget.verseBeginning, verseEnd: widget.verseEnd);
    super.initState();
  }

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
          child: FutureBuilder<Passage>(
            future: callPassage,
            builder: (context, snapshot) {
              var snap = snapshot.data?.data;

              if (snapshot.hasError){
                return Center(
                  child: Text(
                    'Select a Bible Chapter'
                  ),
                );
              } else {
              return Column(
                children: [
                  Html(
                    data: snap?.content,
                    // style:,
                  ),
                ],
              );
            }
            }
          )
          ),
      ),
    );
  }
}