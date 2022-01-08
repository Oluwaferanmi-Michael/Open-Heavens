import 'package:flutter/material.dart';
import 'package:open_heavens/util/constants.dart';

class Navigation extends StatefulWidget {
  const Navigation({ Key? key }) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  
  var _pageIndex = 0;

  List<Widget> pages = [
    Container(),
    Container(),
    Container()
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
        color: Colors.transparent,
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          currentIndex: _pageIndex,
          elevation: 0,

          onTap: onSelected,
          type: BottomNavigationBarType.fixed,

          selectedItemColor: blue,
          selectedLabelStyle: Font.bodyText1(context, color: blue),

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
