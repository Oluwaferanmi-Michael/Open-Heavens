import 'package:flutter/material.dart';
import 'package:open_heavens/util/Widgets/drawer.dart';
import 'package:open_heavens/util/constants.dart';

class Bible extends StatefulWidget {
  const Bible({ Key? key }) : super(key: key);

  @override
  _BibleState createState() => _BibleState();
}

class _BibleState extends State<Bible> {

  
// Books

final books = ['Gen', 'Exo', 'Lev', 'Num', 'Deau',];

DropdownMenuItem<String> bookList(String item) => DropdownMenuItem(
  child: Text(item),
  value: item);
    
String? bibleBooks;


// Chapters

final chapters = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];

  DropdownMenuItem<String> chapterList(String item) =>
      DropdownMenuItem(child: Text(item), value: item);

  String? bibleChapter;


// Verses
  final verses = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];

  DropdownMenuItem<String> verseList(String item) =>
      DropdownMenuItem(child: Text(item), value: item);

  String? bibleVerses;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        backgroundColor: transparent,
        elevation: 0,
        title: Text('Bible', style: headline6(context, color: blue),),
      ),

      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          icon: const Icon(Icons.keyboard_arrow_down_rounded),
                          isDense: true,
                          value: bibleBooks,
                          items: books.map(bookList).toList(),
                          onChanged: (bibleBooks) {
                            setState(() {
                              bibleBooks = bibleBooks;
                            });
                          }),
                      ),
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        border: Border.all(color: black, width: 1),
                        borderRadius: BorderRadius.circular(50)),),


                    Container(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          icon: const Icon(Icons.keyboard_arrow_down_rounded),
                          isDense: true,
                          value: bibleChapter,
                          items: chapters.map(chapterList).toList(),
                          onChanged: (bibleChapter) {
                            setState(() {
                              bibleChapter = bibleChapter;
                            });
                          }),
                      ),
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          border: Border.all(color: black, width: 1),
                          borderRadius: BorderRadius.circular(50)
                          ),
                    ),


                    Container(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          icon: const Icon(Icons.keyboard_arrow_down_rounded),
                          isDense: true,

                            value: bibleVerses,
                            items: chapters.map(verseList).toList(),
                            onChanged: (bibleVerses) {
                              setState(() {
                                bibleVerses = bibleVerses;
                              });
                            }),
                      ),
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          border: Border.all(color: black, width: 1),
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: SingleChildScrollView(
                  child: Text('Nostrud fugiat Lorem cupidatat consequat voluptate. Deserunt deserunt qui nisi exercitation aute. Veniam pariatur esse occaecat Lorem exercitation. Non eiusmod enim eu deserunt anim occaecat pariatur. Exercitation non commodo laboris anim ipsum laborum aute.Enim occaecat aute excepteur consequat irure tempor excepteur aute ut. In qui qui sunt velit nisi qui cupidatat deserunt aliquip do Lorem ad aute pariatur. Cillum velit exercitation pariatur quis ullamco nostrud voluptate cillum voluptate id.Velit exercitation eu veniam ex duis elit esse voluptate. Consectetur consectetur sint cupidatat aliqua sit sint elit. Fugiat enim adipisicing fugiat anim quis. Ullamco culpa exercitation irure esse dolore pariatur quis quis et consequat velit sit. Officia et in et adipisicing enim aute excepteur proident id sit eu id.Dolore consequat reprehenderit in voluptate proident tempor nostrud. Nostrud dolore deserunt quis magna id. Ipsum veniam voluptate fugiat qui cupidatat cillum magna. Excepteur minim et voluptate officia velit dolor cillum ad fugiat proident ad labore do. Eu aliquip laborum excepteur reprehenderit in aliqua amet.Ullamco aliquip proident aliquip duis fugiat est incididunt id. Laborum nostrud sit laboris nulla non proident commodo labore. Ad proident quis ut incididunt excepteur non laboris excepteur nostrud veniam ex ad ipsum. Reprehenderit adipisicing culpa excepteur Lorem non officia est excepteur dolor cupidatat elit.In anim do ullamco mollit non ut velit. Fugiat duis nostrud nisi excepteur adipisicing ea consequat in nostrud labore commodo consequat consectetur veniam. Magna laborum sunt esse laborum quis anim anim qui pariatur dolor voluptate elit incididunt. Ullamco id ipsum ea et occaecat officia ex sit do laboris eiusmod.Consectetur velit labore reprehenderit nostrud quis tempor ad consequat anim. Non dolor consectetur labore voluptate magna laborum ea sint. Minim reprehenderit exercitation excepteur velit consequat exercitation aute fugiat esse esse nostrud enim. Non dolor proident dolore excepteur proident elit labore. Mollit ut aute proident reprehenderit aute ipsum cupidatat aliquip.Reprehenderit ea et commodo eu velit sunt mollit incididunt exercitation consectetur ex. Ad irure aliquip duis labore consequat nostrud duis et elit nostrud amet anim esse labore. Amet magna eiusmod non mollit deserunt. Deserunt ipsum labore culpa Lorem tempor sunt.Aute reprehenderit quis aliquip nostrud aute. Sint esse minim enim commodo ad. Tempor sunt ut amet in nostrud eu excepteur magna Lorem irure occaecat aliquip non reprehenderit. Excepteur eu magna non anim ullamco est mollit deserunt occaecat duis laboris. Velit anim voluptate excepteur qui. Non dolor proident dolore excepteur proident elit labore. Mollit ut aute proident reprehenderit aute ipsum cupidatat aliquip.Reprehenderit ea et commodo eu velit sunt mollit incididunt exercitation consectetur ex. Ad irure aliquip duis labore consequat nostrud duis et elit nostrud amet anim esse labore. Amet magna eiusmod non mollit deserunt. Deserunt ipsum labore culpa Lorem tempor sunt.Aute reprehenderit quis aliquip nostrud aute. Sint esse minim enim commodo ad. Tempor sunt ut amet in nostrud eu excepteur magna Lorem irure occaecat aliquip non reprehenderit. Excepteur eu magna non anim ullamco est mollit deserunt occaecat duis laboris. Velit anim voluptate excepteur qui. Non dolor proident dolore excepteur proident elit labore. Mollit ut aute proident reprehenderit aute ipsum cupidatat aliquip.Reprehenderit ea et commodo eu velit sunt mollit incididunt exercitation consectetur ex. Ad irure aliquip duis labore consequat nostrud duis et elit nostrud amet anim esse labore. Amet magna eiusmod non mollit deserunt. Deserunt ipsum labore culpa Lorem tempor sunt.Aute reprehenderit quis aliquip nostrud aute. Sint esse minim enim commodo ad. Tempor sunt ut amet in nostrud eu excepteur magna Lorem irure occaecat aliquip non reprehenderit. Excepteur eu magna non anim ullamco est mollit deserunt occaecat duis laboris. Velit anim voluptate excepteur qui. Non dolor proident dolore excepteur proident elit labore. Mollit ut aute proident reprehenderit aute ipsum cupidatat aliquip.Reprehenderit ea et commodo eu velit sunt mollit incididunt exercitation consectetur ex. Ad irure aliquip duis labore consequat nostrud duis et elit nostrud amet anim esse labore. Amet magna eiusmod non mollit deserunt. Deserunt ipsum labore culpa Lorem tempor sunt.Aute reprehenderit quis aliquip nostrud aute. Sint esse minim enim commodo ad. Tempor sunt ut amet in nostrud eu excepteur magna Lorem irure occaecat aliquip non reprehenderit. Excepteur eu magna non anim ullamco est mollit deserunt occaecat duis laboris. Velit anim voluptate excepteur qui. Non dolor proident dolore excepteur proident elit labore. Mollit ut aute proident reprehenderit aute ipsum cupidatat aliquip.Reprehenderit ea et commodo eu velit sunt mollit incididunt exercitation consectetur ex. Ad irure aliquip duis labore consequat nostrud duis et elit nostrud amet anim esse labore. Amet magna eiusmod non mollit deserunt. Deserunt ipsum labore culpa Lorem tempor sunt.Aute reprehenderit quis aliquip nostrud aute. Sint esse minim enim commodo ad. Tempor sunt ut amet in nostrud eu excepteur magna Lorem irure occaecat aliquip non reprehenderit. Excepteur eu magna non anim ullamco est mollit deserunt occaecat duis laboris. Velit anim voluptate excepteur qui. Non dolor proident dolore excepteur proident elit labore. Mollit ut aute proident reprehenderit aute ipsum cupidatat aliquip.Reprehenderit ea et commodo eu velit sunt mollit incididunt exercitation consectetur ex. Ad irure aliquip duis labore consequat nostrud duis et elit nostrud amet anim esse labore. Amet magna eiusmod non mollit deserunt. Deserunt ipsum labore culpa Lorem tempor sunt.Aute reprehenderit quis aliquip nostrud aute. Sint esse minim enim commodo ad. Tempor sunt ut amet in nostrud eu excepteur magna Lorem irure occaecat aliquip non reprehenderit. Excepteur eu magna non anim ullamco est mollit deserunt occaecat duis laboris. Velit anim voluptate excepteur qui. Non dolor proident dolore excepteur proident elit labore. Mollit ut aute proident reprehenderit aute ipsum cupidatat aliquip.Reprehenderit ea et commodo eu velit sunt mollit incididunt exercitation consectetur ex. Ad irure aliquip duis labore consequat nostrud duis et elit nostrud amet anim esse labore. Amet magna eiusmod non mollit deserunt. Deserunt ipsum labore culpa Lorem tempor sunt.Aute reprehenderit quis aliquip nostrud aute. Sint esse minim enim commodo ad. Tempor sunt ut amet in nostrud eu excepteur magna Lorem irure occaecat aliquip non reprehenderit. Excepteur eu magna non anim ullamco est mollit deserunt occaecat duis laboris. Velit anim voluptate excepteur qui. Non dolor proident dolore excepteur proident elit labore. Mollit ut aute proident reprehenderit aute ipsum cupidatat aliquip.Reprehenderit ea et commodo eu velit sunt mollit incididunt exercitation consectetur ex. Ad irure aliquip duis labore consequat nostrud duis et elit nostrud amet anim esse labore. Amet magna eiusmod non mollit deserunt. Deserunt ipsum labore culpa Lorem tempor sunt.Aute reprehenderit quis aliquip nostrud aute. Sint esse minim enim commodo ad. Tempor sunt ut amet in nostrud eu excepteur magna Lorem irure occaecat aliquip non reprehenderit. Excepteur eu magna non anim ullamco est mollit deserunt occaecat duis laboris. Velit anim voluptate excepteur qui. Non dolor proident dolore excepteur proident elit labore. Mollit ut aute proident reprehenderit aute ipsum cupidatat aliquip.Reprehenderit ea et commodo eu velit sunt mollit incididunt exercitation consectetur ex. Ad irure aliquip duis labore consequat nostrud duis et elit nostrud amet anim esse labore. Amet magna eiusmod non mollit deserunt. Deserunt ipsum labore culpa Lorem tempor sunt.Aute reprehenderit quis aliquip nostrud aute. Sint esse minim enim commodo ad. Tempor sunt ut amet in nostrud eu excepteur magna Lorem irure occaecat aliquip non reprehenderit. Excepteur eu magna non anim ullamco est mollit deserunt occaecat duis laboris. Velit anim voluptate excepteur qui. Non dolor proident dolore excepteur proident elit labore. Mollit ut aute proident reprehenderit aute ipsum cupidatat aliquip.Reprehenderit ea et commodo eu velit sunt mollit incididunt exercitation consectetur ex. Ad irure aliquip duis labore consequat nostrud duis et elit nostrud amet anim esse labore. Amet magna eiusmod non mollit deserunt. Deserunt ipsum labore culpa Lorem tempor sunt.Aute reprehenderit quis aliquip nostrud aute. Sint esse minim enim commodo ad. Tempor sunt ut amet in nostrud eu excepteur magna Lorem irure occaecat aliquip non reprehenderit. Excepteur eu magna non anim ullamco est mollit deserunt occaecat duis laboris. Velit anim voluptate excepteur qui. Non dolor proident dolore excepteur proident elit labore. Mollit ut aute proident reprehenderit aute ipsum cupidatat aliquip.Reprehenderit ea et commodo eu velit sunt mollit incididunt exercitation consectetur ex. Ad irure aliquip duis labore consequat nostrud duis et elit nostrud amet anim esse labore. Amet magna eiusmod non mollit deserunt. Deserunt ipsum labore culpa Lorem tempor sunt.Aute reprehenderit quis aliquip nostrud aute. Sint esse minim enim commodo ad. Tempor sunt ut amet in nostrud eu excepteur magna Lorem irure occaecat aliquip non reprehenderit. Excepteur eu magna non anim ullamco est mollit deserunt occaecat duis laboris. Velit anim voluptate excepteur qui.', style: bodyText2(context),)))
            ],
          ),
        ),
      ),
    );
  }
}