import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_heavens/Services/api_methods.dart';

import '../Models/hymn_model.dart';




final hymnProvider = FutureProvider<HymnModel>((ref) async {
  return ref.read(apiCall).fetchHymns();
  });