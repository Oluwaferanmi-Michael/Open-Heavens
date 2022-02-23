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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [

          

          Container(
            height: 379.h,
            width: width(1, context),
            color: grey,
          ),

          SizedBox(height: 82.h,),

          Row(
            children: [
              SizedBox(
                width: 76.w,
                child: Image.asset('assets/images/logoBlue.png')),
            ]
          ),
          SizedBox(height: 16.h,),

          Expanded(child: Text(title!, style: onboardingHeader(context))),
          Expanded(child: Text(subtitle!, style: onboardingsubTitle(context),))
        ],
      ),
    );
  }
}