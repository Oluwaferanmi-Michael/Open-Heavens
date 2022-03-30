import 'package:flutter/material.dart';
import 'package:open_heavens/Screens/Bible/bible.dart';
import 'package:open_heavens/Screens/Home/home.dart';
import 'package:open_heavens/Screens/Hymns/hymns.dart';
import 'package:open_heavens/util/constants.dart';

class Navigation extends StatefulWidget {
  final GlobalKey<NavigationState>? navKey;
  const Navigation({ Key? key, this.navKey }) : super(key: key);

  @override
  NavigationState createState() => NavigationState();
}

class NavigationState extends State<Navigation> {
  
  var _pageIndex = 0;

  List<Widget> pages = [
    const Home(),
    const Bible(),
    const Hymns()
  ];

  void onSelected( int index){
    setState(() {
    _pageIndex = index;
    });
    

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(

        elevation: 0,
        color: white,
        child: BottomNavigationBar(
          
          backgroundColor: Colors.transparent,
          currentIndex: _pageIndex,
          elevation: 0,

          onTap: onSelected,
          type: BottomNavigationBarType.fixed,

          selectedItemColor: blue,
          selectedLabelStyle: bodyText(context, color: blue, fontWeight: FontWeight.bold),

          unselectedLabelStyle: Font.bodyText2(context, color: grey),
          unselectedItemColor: grey,

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.book_outlined), label: 'Bible'),  
            BottomNavigationBarItem(
                icon: Icon(Icons.music_note_outlined), label: 'Hymn'),
          ],
          ),
      ),

      body: pages[_pageIndex],
    );
  }
}
