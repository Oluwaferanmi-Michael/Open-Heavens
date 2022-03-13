import 'package:flutter/material.dart';

import '../../util/constants.dart';

class SelectBook extends StatefulWidget {
  SelectBook({Key? key}) : super(key: key);

  @override
  State<SelectBook> createState() => _SelectBookState();
}

class _SelectBookState extends State<SelectBook> {

  List<Widget> tab = [
    const BookScreen(),
    const ChapterScreen(),
    const VerseScreen(),
  ];

  List<Tab> topTab =  const [
    Tab(
      child: Text('Book'),
    ),
    Tab(
      child: Text('Chapter'),
    ),
    Tab(
      child: Text('Verse'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
    child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: grey,
        bottom: TabBar(
          tabs: topTab,
        ),
      ),

      body: TabBarView(
        children: tab,
      ),
    ));
  }
}

class BookScreen extends StatelessWidget {
  const BookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}


class ChapterScreen extends StatelessWidget {
  const ChapterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}


class VerseScreen extends StatelessWidget {
  const VerseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}