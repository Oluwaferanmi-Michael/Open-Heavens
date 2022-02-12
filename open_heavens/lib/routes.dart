
import 'package:flutter/cupertino.dart';
import 'package:open_heavens/Screens/Drawer%20Screens/Topical%20Readings/topical_readings.dart';

import 'Screens/Devotional/devotionalScreen.dart';

Map<String, WidgetBuilder> routes = {
   '/devotional' : (context) => const Devotional(),
   '/topicalReadings' : (context) => const TopicalReadings(),
};