import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_heavens/Screens/Bible/Bible%20components/verse_screen.dart';
import 'package:open_heavens/Services/providers.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../Models/chapters_model.dart';
import '../../../Services/api_methods.dart';
import '../../../util/constants.dart';



class ChapterScreen extends StatefulWidget {
  
  final String? book;
  // final VoidCallback? onNext;
  const ChapterScreen({Key? key, this.book}) : super(key: key);

  @override
  State<ChapterScreen> createState() => ChapterScreenState();
}

class ChapterScreenState extends State<ChapterScreen> {
  late Future<Chapters> callChapter;


  @override
  void initState(){
    callChapter = ApiCalls.fetchChapters(widget.book!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: grey,
          leading: IconButton(
            icon: back,
            onPressed: () => Navigator.pop(context),
          ),
          actions: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
              child: Text(
                'Chapter',
                style: secondaryHeader(context, color: black),
              ),
            )
          ]),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => VerseScreen(chapter: snap[index].id!)));
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