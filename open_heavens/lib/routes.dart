
import 'package:flutter/cupertino.dart';
import 'package:open_heavens/Screens/Drawer%20Screens/Devotional%20Distributors/distributors.dart';
import 'package:open_heavens/Screens/Drawer%20Screens/Topical%20Readings/topical_readings.dart';
import 'package:open_heavens/Screens/Drawer%20Screens/Topics%20by%20Date/topics_by_month.dart';

import 'Screens/Devotional/devotionalScreen.dart';

Map<String, WidgetBuilder> routes = {
   '/devotional' : (context) => const Devotional(),
   '/topicalReadings' : (context) => const TopicalReadings(),
   '/topicsByMonth' : (context) => const TopicsByMonth(),
   '/distributors' : (context) => const Distributors()
   };