import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_heavens/util/constants.dart';


class Widget1 extends StatelessWidget {

  final String? title;
  final String? subtitle;
  final String? il;
  final double? top; 
  final double? bottom; 

  const Widget1({
    Key? key, this.title, this.subtitle, this.il, this.top, this.bottom
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [

          

          Positioned(
            top: top,
            child: SizedBox(
              width: 440.w,
              child: Image.asset(il!))),

          // SizedBox(height: 82.h,),

          Positioned(
            bottom: 0.h,
            child: SizedBox(
              height: 240.h,
              width: width(1, context),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 76.w,
                      child: Image.asset('assets/images/logoBlue.png')),
                    
                    SizedBox(height: 16.h,),
              
                    Expanded(child: Text(title!, style: onboardingHeader(context))),
                    Expanded(child: Text(subtitle!, style: onboardingsubTitle(context),)),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

