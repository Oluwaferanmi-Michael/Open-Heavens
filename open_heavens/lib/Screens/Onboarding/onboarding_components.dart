import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_heavens/util/constants.dart';


class Widget1 extends StatelessWidget {

  final String? title;
  final String? subtitle;

  const Widget1({
    Key? key, this.title, this.subtitle

    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 76.w,
                  child: Image.asset('assets/images/logoBlue.png')),
              ]
            ),

            SizedBox(height: 16.h,),

            Flexible(
              child: Column(
                children: [
                  Expanded(child: Text(title!, style: onboardingHeader(context))),
                  SizedBox(
                    height: 12.h,
                  ),
                ],
              ),
            ),
            Expanded(child: Text(subtitle!, style: onboardingsubTitle(context),))
          ],
        ),
      ),
    );
  }
}