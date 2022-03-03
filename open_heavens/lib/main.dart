import 'package:flutter/material.dart';
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

  // Allows for Splash Screen and name auth to be displayed only Once
  final pref = await SharedPreferences.getInstance();

  final foreward = pref.getBool('foreward') ?? false;
  final showHome = pref.getBool('showHome') ?? false;

  // Runs App
  runApp(ProviderScope(child: MyApp(showHome: showHome, foreward: foreward)));

  // Remves SPlash Screen After App Completes
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  // required to skip splash after 1st time
  final bool showHome;
  final bool foreward;

  const MyApp({
    required this.foreward,
    required this.showHome,
    Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        builder: () {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              scaffoldBackgroundColor: white,
              appBarTheme: AppBarTheme(
                iconTheme: IconThemeData(color: blue),
              ),
              iconTheme: IconThemeData(color: blue),
              fontFamily: 'Montserrat',
              // This is the theme of your application.
              //
              // Try running your application with "flutter run". You'll see the
              // application has a blue toolbar. Then, without quitting the app, try
              // changing the primarySwatch below to Colors.green and then invoke
              // "hot reload" (press "r" in the console where you ran "flutter run",
              // or simply save your changes to "hot reload" in a Flutter IDE).
              // Notice that the counter didn't reset back to zero; the application
              // is not restarted.
              // primarySwatch: Colors.blue,
            ),
            routes: routes,
            home: const Onboarding(),
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
