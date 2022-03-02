import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:open_heavens/Models/user_model.dart';
import 'package:open_heavens/util/constants.dart';

class FirstDoor extends StatefulWidget {
  const FirstDoor({ Key? key }) : super(key: key);

  @override
  _FirstDoorState createState() => _FirstDoorState();
}

class _FirstDoorState extends State<FirstDoor> {

  TextEditingController  nameController = TextEditingController();
  final _messengerkey = GlobalKey<ScaffoldMessengerState>();

  final snackBar = const SnackBar(
    content: Text('Please fill the text field to continue or Skip to move on 🙂',),
    );

    String name = '';
    final formKey = GlobalKey<FormState>();

    void returnName(UserModel userName){
      final userBox = Hive.box('user');
      userBox.putAt(0, userName);
    }

   
  @override
  void dispose() {
    // Hive.box('user').close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Hive.openBox('user'),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.done){
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
          return Scaffold(
            body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  SizedBox(height: 164.h,),
                
                  SizedBox(
                    width: 76.w,
                    child: Image.asset('assets/images/logoBlue.png')),
                  SizedBox(height: 32.h,),
                  Text('Welcome', style: onboardingHeader(context),),
                  SizedBox(height: 12.h,),
                  Text('Let\'s get to know you', style: onboardingsubTitle(context),),
                  SizedBox(height: 24.h,),
                
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: blue,
                      ),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Form(
                      key: formKey,
                      child: TextFormField(
                        autocorrect: false,
                    
                        textAlign: TextAlign.center,
                        controller: nameController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'What\'s your name ?',
                          hintStyle: onboardingsubTitle(context),
                          
                        )
                      ),
                    ),
                  ),
                
                  const Spacer(flex: 1),
                
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () => Navigator.popAndPushNamed(context, '/navigation'),
                          child: Container(
                            alignment: Alignment.center,
                            // width: width(1, context),
                            child: Text(
                              'SKIP',
                              style: button(context, color: blue),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              border: Border.all(color: blue),
                                borderRadius: BorderRadius.circular(4),),
                          ),
                        ),
                      ),
                
                      SizedBox(width: 24.w,),
                
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            if (nameController.text.isEmpty) {
                              _messengerkey.currentState?.showSnackBar(snackBar);
                            } else {
                              formKey.currentState?.save();
                              final newUser = UserModel(name: name);
                              returnName(newUser);
                              Navigator.popAndPushNamed(context, '/navigation');
                            }
                          },
                          child: Container(
                            alignment: Alignment.center,
                            // width: width(1, context),
                            child: Text(
                              'GET STARTED',
                              style: button(context, color: white),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4), color: blue),
                          ),
                        ),
                      ),
                    ],
                  ),
                
                  SizedBox(
                    height: 54.h,
                  ),
                ],
              ),
            ),
                    )
          );
          }

          
        }
        return const Scaffold();
        }
    );
  }
}