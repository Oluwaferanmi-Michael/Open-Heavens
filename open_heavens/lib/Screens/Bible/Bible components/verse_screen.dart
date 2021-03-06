import 'package:flutter/material.dart';
import 'package:open_heavens/Screens/Bible/select_book.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../Models/chapters_model.dart';
import '../../../Models/verse_model.dart';
import '../../../Services/api_methods.dart';
import '../../../util/constants.dart';
import '../../navigation.dart';
import '../bible.dart';

class VerseScreen extends StatefulWidget {
  // final String? book;
  final String? chapter;
  final VoidCallback? onNext;
  final GlobalKey<NavigationState>? navKey;
  const VerseScreen({
    Key? key,
    this.chapter,
    // this.book,
    this.onNext, this.navKey,
  }) : super(key: key);

  @override
  State<VerseScreen> createState() => _VerseScreenState();
}

class _VerseScreenState extends State<VerseScreen> {
  late Future<Verse> callVerse;

  @override
  void initState() {
    callVerse = ApiCalls.fetchVerse(widget.chapter!);
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
                'Verse',
                style: secondaryHeader(context, color: black),
              ),
            )
          ]),
      body: FutureBuilder<Verse>(
          future: callVerse,
          builder: (context, snapshot) {
            var snap = snapshot.data?.data;
            // var connect = snapshot.connectionState;
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snap?.length,
                  itemBuilder: (context, index) => ListTile(
                        title: Text(
                          snap![index].id!,
                          style:
                              bodyText2(context, fontWeight: FontWeight.bold),
                        ),
                        onTap: () async {
                          var prefs = await SharedPreferences.getInstance();
                          prefs.setString('verse', snap[index].id!);
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Bible(verseBeginning: prefs.getString('verse')),));
                          // widget.navKey?.currentState?.pages;
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
