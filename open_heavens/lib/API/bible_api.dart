import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:open_heavens/Models/bible_books_model.dart';




  var client = http.Client();

  Future<Books> fetchBooks() async {
    var client = http.Client();

    final response = await client.get(Uri.parse('https://api.scripture.api.bible/v1/bibles/de4e12af7f28f599-01/books'));

    if(response.statusCode == 200){ 
      return Books.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Cant find the Books');
    }

  }
