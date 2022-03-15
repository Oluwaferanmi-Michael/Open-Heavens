import 'package:flutter/material.dart';
import 'package:open_heavens/Screens/Bible/Bible%20components/chapter_screen.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_heavens/Services/providers.dart';
import '../../../Models/bible_books_model.dart';
import '../../../Services/api_methods.dart';
import '../../../util/constants.dart';
import '../select_book.dart';
// import 'chapter_screen.dart';

class BookScreen extends StatefulWidget {
  final GlobalKey<SelectBookState>? selectBook;
  final GlobalKey<SelectBookState>? chapterScreen;
  final VoidCallback? onNext;
  const BookScreen({Key? key, this.selectBook, this.chapterScreen, this.onNext})
      : super(key: key);

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  late Future<Books> callBook;

  @override
  void initState() {
    callBook = ApiCalls.fetchBooks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Books>(
          future: callBook,
          builder: (context, snapshot) {
            var snap = snapshot.data?.data;
            // var connect = snapshot.connectionState;
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snap?.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                        title: Text(
                          snap![index].name!,
                          style:
                              bodyText2(context, fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ChapterScreen(book: snap[index].id!)));
                          });
                          
                          }
                        

                        );
                  
            } else if (snapshot.hasError) {
              return Center(child: Text(snapshot.error.toString()));
            } else {
              return Container();
            }
          }),
    );
  }
}
