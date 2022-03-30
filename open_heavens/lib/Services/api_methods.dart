import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:open_heavens/Models/bible_books_model.dart';
import 'package:open_heavens/Models/chapters_model.dart';
import 'package:open_heavens/Models/passage_model.dart';
import 'package:open_heavens/Models/verse_model.dart';
import 'package:open_heavens/util/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../Models/hymn_model.dart';

final apiCall = Provider<ApiCalls>((ref) => ApiCalls());


class ApiCalls { 

var client = http.Client();


//  Calling verse of the Bible
static Future<Verse> fetchVerse(String chooseChapter) async {

  var url = Uri.parse(
          'https://api.scripture.api.bible/v1/bibles/de4e12af7f28f599-01/chapters/' + chooseChapter + '/verses'
            
            );
  var client = http.Client();

  final response = await client.get(
      url,
      headers: apiKey);

  var body = Verse.fromJson(jsonDecode(response.body));

  if (response.statusCode == 200) {
    return body;
  } else {
    throw Exception();
  }
}

  // To fetch the Chapters of the Bible
  static Future<Chapters> fetchChapters(String chooseBook) async {

    var url = Uri.parse('https://api.scripture.api.bible/v1/bibles/de4e12af7f28f599-01/books/'+ chooseBook + '/chapters');

    var client = http.Client();

    final response = await client.get(url, headers: apiKey);
    var body = Chapters.fromJson(jsonDecode(response.body));

    if(response.statusCode == 200){
      return body;
    } else {
      throw Exception();
    }
  }

  // To fetch the books of the Bible
  static Future<Books> fetchBooks() async{
    var url = Uri.parse(books);

    var client = http.Client();

    final response = await client.get(url, headers: apiKey);
    var body = Books.fromJson(jsonDecode(response.body));

    if(response.statusCode == 200){
      return body;
    } else {
      return Books.fromJson(jsonDecode(response.statusCode.toString()));
    }
  }

  //  Calling passage of the Bible
  static Future<Passage> showPassage({String? verseBeginning, String? verseEnd}) async {
    var url = Uri.parse(
        'https://api.scripture.api.bible/v1/bibles/de4e12af7f28f599-01/passages/$verseBeginning');
    var client = http.Client();

    final response = await client.get(url, headers: apiKey);

    var body = Passage.fromJson(jsonDecode(response.body));

    if (response.statusCode == 200) {
      return body;
    } else {
      throw Exception();
    }
  }


  // Calling Hymns
  Future<HymnModel> fetchHymns() async {
    var url = Uri.parse('https://api.jsonbin.io/b/623502067caf5d67836cff48');
    var client = http.Client();

    final response = await client.get(url, headers: hymnSecretKey);

    var body = HymnModel.fromJson(jsonDecode(response.body));

    if (response.statusCode == 200) {
      return body;
    } else {
      throw Exception();
    }
  }

}