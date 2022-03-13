import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:open_heavens/Models/user_model.dart';
import 'package:open_heavens/Screens/Onboarding/onboarding.dart';
import 'package:open_heavens/Screens/navigation.dart';
import 'package:open_heavens/routes.dart';
import 'package:open_heavens/util/constants.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart' as p;
import 'package:shared_preferences/shared_preferences.dart';

void main() async {

  // Ensures Widgets Initialization
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // Preserve Splash Screen until app finishes Initilization
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Setting Up Hive Database
  final appDirectory = await p.getApplicationDocumentsDirectory();
  Hive.init(appDirectory.path);
  Hive.registerAdapter(UserModelAdapter());
  await Hive.openBox('user');

  // Allows for Splash Screen and name auth to be displayed only Once
  final pref = await SharedPreferences.getInstance();

  final foreward = pref.getBool('foreward') ?? false;
  final showHome = pref.getBool('showHome') ?? false;

  // Runs App
  runApp(ProviderScope(child: MyApp(showHome: showHome, foreward: foreward)));

  // Removes Splash Screen After App Completes
  FlutterNativeSplash.remove();
}


// Apps first entry
class MyApp extends StatelessWidget {
  // required to skip splash after 1st time
  final bool? showHome;
  final bool? foreward;

  const MyApp({
    this.foreward,
    this.showHome,
    Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        builder: () {
          return MaterialApp(


            debugShowCheckedModeBanner: false,

            // This is the theme of your application.
            //
            theme: ThemeData(

              scaffoldBackgroundColor: white,
              appBarTheme: AppBarTheme(
                systemOverlayStyle: SystemUiOverlayStyle.light,
                iconTheme: IconThemeData(color: blue),
              ),
              iconTheme: IconThemeData(color: blue),
              fontFamily: 'Montserrat',
              
            ),

            routes: routes,

            home: showHome == true && Hive.box('user').isNotEmpty == true ? const Navigation() : const Onboarding(),

            builder: (context, widget) {
              ScreenUtil.setContext(context);
              return MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                  child: widget!);
            },
          );
        });
  }
}
