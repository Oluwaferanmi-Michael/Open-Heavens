
import 'package:flutter/cupertino.dart';
import 'package:open_heavens/Screens/Auth/name_auth.dart';
import 'package:open_heavens/Screens/Drawer%20Screens/Devotional%20Distributors/distributors.dart';
import 'package:open_heavens/Screens/Drawer%20Screens/Topical%20Readings/topical_readings.dart';
import 'package:open_heavens/Screens/Drawer%20Screens/Topics%20by%20Date/topics_by_month.dart';
import 'package:open_heavens/Screens/navigation.dart';

import 'Screens/Devotional/devotionalScreen.dart';

Map<String, WidgetBuilder> routes = {
  '/firstDoor' : (context) => const FirstDoor(),
  '/navigation' : (context) => const Navigation(),
   '/devotional' : (context) => const Devotional(),
  //  '/topicalReadings' : (context) => const TopicalReadings(),
  //  '/topicsByMonth' : (context) => const TopicsByMonth(),
  //  '/distributors' : (context) => const Distributors()
   };