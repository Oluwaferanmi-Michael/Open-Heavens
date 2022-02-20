import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_heavens/Screens/Onboarding/onboarding_components.dart';
import 'package:open_heavens/util/constants.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              
              child: PageView(
                controller: _controller,
                children: const [
                  Widget1(
                    title: 'Welcome to the Open Heavens App',
                    subtitle: 'We have quite a lot for you',
                  ),
                  
                  Widget1(
                    title: 'Daily Devotions',
                    subtitle: 'Experience your devotional guide to a closer fellowship with God for teens and adults',
                  ),
                  
                  Widget1(
                    title: 'Bible in a year',
                    subtitle: 'Take on the task of completing the Bible and see how much more you\'ll grow',
                  )
                ],
              ),
            ),

            FutureBuilder(
              future: Future.value(false),
              builder: (context, snapshot) {
                if (snapshot.hasData){
                  return const SizedBox(
                    child: Text(''),
                  );
                } else {
                return Visibility(
                  visible: _controller.page != 2 ? false : true,
                  child: InkWell(
                    onTap: () => Navigator.popAndPushNamed(context, '/navigation'),
                    child: Container(
                      width: width(1, context),
                      child: Text(_controller.page != 2 ? 'NEXT' : 'I\'M READY', style: button(context),),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: blue
                      ),
                    ),
                  ),
                );}
              }
            )
          ],
        ),
      )
    );
  }
}