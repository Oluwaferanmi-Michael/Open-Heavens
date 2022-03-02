import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:open_heavens/Screens/Auth/name_auth.dart';
import 'package:open_heavens/Screens/Onboarding/onboarding_components.dart';
import 'package:open_heavens/util/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

  final PageController _controller = PageController();
  bool isLastPage = false;

  
  @override
  void dispose() {
    _controller.dispose();
    // Hive.box('user').close();
    super.dispose();
  }

int number = 0;

  List<String> illustrations = [
    'assets/images/Group 58.png',
    'assets/images/undraw_reading_re_29f8.png',
    'assets/images/undraw_reading_time_re_phf7.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        // color: grey,
        margin: EdgeInsets.only(bottom: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        height: 42.h,
        child:  Visibility(
              replacement: SizedBox(height: 42.h),
              visible: isLastPage ? true : false,
              child: InkWell(
                    onTap: () {
                      if (_controller.page != 2) {
                        _controller.nextPage(duration: const Duration(milliseconds: 800), curve: Curves.easeIn);
                      } else {
                        Navigator.popAndPushNamed(context, '/firstDoor');
                        
                      }},
                    child: Container(
                      // margin: const EdgeInsets.symmetric(horizontal: 24),
                      alignment: Alignment.center,
                      width: width(1, context),
                      child: Text('I\'M READY', 
                      style: button(context, color: white),),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: blue
                      ),
                    ),
                  ),
            ),
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 42),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          //   SizedBox(
          //   height: 136.h,
          // ),

            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    isLastPage = index == 2;
                    number = index;
                  });
                },
                children: [
                  Widget1(
                    top: -94.h,
                    il: illustrations[number],
                    title: 'Welcome to the Open Heavens App',
                    subtitle: 'We have quite a lot for you',
                  ),
                  
                  Widget1(
                    top: 84.h,
                    il: illustrations[number],
                    title: 'Daily Devotions',
                    subtitle: 'Experience your devotional guide to a closer fellowship with God for teens and adults',
                  ),
                  
                  Widget1(
                    top: 84.h,
                    il: illustrations[number],
                    title: 'Bible in a year',
                    subtitle: 'Take on the task of completing the Bible and see how much more you\'ll grow',
                  )
                ],
              ),
            ),

            SizedBox(
            height: 16.h,
          ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                onDotClicked: (index) => _controller.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut),
                effect: WormEffect(
                  dotWidth: 8,
                  radius: 14,
                  dotHeight: 8,
                  activeDotColor: blue,
                  dotColor: grey
                  ),
              ),
            ),

            SizedBox(height: 24.h,),

            
          ],
        ),
      )
    );
  }
}