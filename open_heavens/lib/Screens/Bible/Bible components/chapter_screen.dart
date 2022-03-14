import 'package:flutter/material.dart';

import '../../../Models/chapters_model.dart';
import '../../../Services/api_methods.dart';
import '../../../util/constants.dart';



class ChapterScreen extends StatefulWidget {
  final String? book;
  final VoidCallback? onNext;
  const ChapterScreen({Key? key, this.book, this.onNext,}) : super(key: key);

  @override
  State<ChapterScreen> createState() => _ChapterScreenState();
}

class _ChapterScreenState extends State<ChapterScreen> {
  late Future<Chapters> callChapter;


  @override
  void initState() {
    callChapter = ApiCalls.fetchChapters(widget.book!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: FutureBuilder<Chapters>(
        future: callChapter,
        builder: (context, snapshot) {
          var snap = snapshot.data?.data;
          // var connect = snapshot.connectionState;
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snap?.length,
                itemBuilder: (context, index) => ListTile(
                      title: Text(
                        snap![index].number!,
                        style: bodyText2(context, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => _verseScreen(snap[index].id!)));
                      },
                    ));
          } else if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          } else {
            return Container();
          }
        }),
  );
  }
}