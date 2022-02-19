import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:open_heavens/Models/hymn_model.dart';

class HymnApi {
  static Future<List<HymnModel>> getLocally(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('open_heavens/assets/Database/hymns.json');

    final body = json.decode(data);

    return body.map<HymnModel>(HymnModel.fromJson(json)).toList();
  }
}