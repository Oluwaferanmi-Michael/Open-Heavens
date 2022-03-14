import 'package:flutter/material.dart';
import 'package:open_heavens/Models/verse_model.dart';
import 'package:open_heavens/Screens/Bible/Bible%20components/book_screen.dart';
import 'package:open_heavens/Screens/Bible/Bible%20components/chapter_screen.dart';
import 'package:open_heavens/Screens/Bible/Bible%20components/verse_screen.dart';
import '../../Models/bible_books_model.dart';
import '../../Models/chapters_model.dart';
import '../../Services/api_methods.dart';
import '../../util/constants.dart';
// import 'Bible components/book_screen.dart';
// import 'Bible components/chapter_screen.dart';

class SelectBook extends StatefulWidget {
  const SelectBook({Key? key}) : super(key: key);

  @override
  State<SelectBook> createState() => _SelectBookState();
}

class _SelectBookState extends State<SelectBook> with SingleTickerProviderStateMixin {


late final controller =
      TabController(length: topTab.length, vsync: this);

  // List<Widget> tab =  [
  //    BookScreen(
  //      onNext: () => controller.index = 1,
  //    )
  // ];

  List<Tab> topTab =  const [
    Tab(
      child: Text('Book',),
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
    return DefaultTabController(
    length: 3,
    child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: grey,
        bottom: TabBar(
          controller: controller,
          tabs: topTab,
        ),
      ),

      body: TabBarView(
        controller: controller,
        children: [
          BookScreen(
            onNext: () => controller.index = 2,
          ),
          ChapterScreen(
            onNext: () => controller.index = 3
          ),
          const VerseScreen()
      ],
      ),
    ));
  }
}



// Widget _bookScreen(){

//   late Future<Books> callBook;

//   @override
//   void initState() {
//     callBook = ApiCalls.fetchBooks();
//   }
//   initState();

  // return Scaffold(
  //   body: FutureBuilder<Books>(
  //       future: callBook,
  //       builder: (context, snapshot) {
  //         var snap = snapshot.data?.data;
  //         // var connect = snapshot.connectionState;
  //         if (snapshot.hasData) {
  //           return ListView.builder(
  //               itemCount: snap?.length,
  //               itemBuilder: (context, index) => ListTile(
  //                     title: Text(
  //                       snap![index].name!,
  //                       style: bodyText2(context, fontWeight: FontWeight.bold),
  //                     ),
  //                     onTap: () {
  //                       Navigator.push(
  //                           context,
  //                           MaterialPageRoute(
  //                               builder: (context) =>
  //                                   _chapterScreen(snap[index].id!)));
  //                     },
  //                   ));
  //         } else if (snapshot.hasError) {
  //           return Center(child: Text(snapshot.error.toString()));
  //         } else {
  //           return Container();
  //         }
  //       }),
  // );
// }


// Widget _chapterScreen(String book) {
//   late Future<Chapters> callChapter;

//   // var stringParam = book;

//   @override
//   void initState() {
//     callChapter = ApiCalls.fetchChapters(book);
    
//   }

//   initState();

  // return Scaffold(
  //   body: FutureBuilder<Chapters>(
  //       future: callChapter,
  //       builder: (context, snapshot) {
  //         var snap = snapshot.data?.data;
  //         // var connect = snapshot.connectionState;
  //         if (snapshot.hasData) {
  //           return ListView.builder(
  //               itemCount: snap?.length,
  //               itemBuilder: (context, index) => ListTile(
  //                     title: Text(
  //                       snap![index].number!,
  //                       style: bodyText2(context, fontWeight: FontWeight.bold),
  //                     ),
  //                     onTap: () {
  //                       Navigator.push(context, MaterialPageRoute(builder: (context) => _verseScreen(snap[index].id!)));
  //                     },
  //                   ));
  //         } else if (snapshot.hasError) {
  //           return Center(child: Text(snapshot.error.toString()));
  //         } else {
  //           return Container();
  //         }
  //       }),
  // );
// }


// Widget _verseScreen(String verse) {
//   late Future<Verse> callVerse;

//   // var stringParam = book;

//   @override
//   void initState() {
//     callVerse = ApiCalls.fetchVerse(verse);
//   }

//   initState();

//   return Scaffold(
//     body: FutureBuilder<Verse>(
//         future: callVerse,
//         builder: (context, snapshot) {
//           var snap = snapshot.data?.data;
//           if (snapshot.hasData) {
//             return ListView.builder(
//                 itemCount: snap?.length,
//                 itemBuilder: (context, index) => ListTile(
//                       title: Text(
//                         snap![index].id!,
//                         style: bodyText2(context, fontWeight: FontWeight.bold),
//                       ),
//                       onTap: () {
//                       //   Navigator.push(
//                       //       context,
//                       //       MaterialPageRoute(
//                       //           builder: (context) =>
//                       //               _chapterScreen(snap[index].id!)));
//                       },
//                     ));
//           } else if (snapshot.hasError) {
//             return Center(child: Text(snapshot.error.toString()));
//           } else {
//             return Container();
//           }
//         }),
//   );
// }