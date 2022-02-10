import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_heavens/util/constants.dart';

class Devotional extends StatefulWidget {
  const Devotional({ Key? key }) : super(key: key);

  @override
  _DevotionalState createState() => _DevotionalState();
}

class _DevotionalState extends State<Devotional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                child:  IconButton( onPressed:() => Navigator.pop(context), icon: const Icon(Icons.chevron_left),),
              ),
            ),

            Positioned(
              top: 0,
              child: Opacity(
                opacity: .2,
                child: Text(
                  '20\n22',
                  maxLines: 2,
                  style: TextStyle(
                    height: .75,
                    fontWeight: FontWeight.w900,
                    fontSize: width(1, context)
                  ),
                ),
              ),
            ),

            Container(
              height: height(1, context),
              margin: const EdgeInsets.only(top: 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('4th January', style: headline5(context),),
                  Text('TODAY\'S READ', style: subtitle1(context),),

                  const SizedBox(height: 24,),

                  Text(
                    'THE BEGINNING OF MONTHS',
                    style: headline6(context),
                  ),

                  const SizedBox(
                    height: 12,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: SizedBox(
                      height: height(1, context) - 291,
                      child: ListView(
                        children: [
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text(
                                'Memory Verse',
                                style: subtitle1(context),
                          ),
                          const SizedBox(
                                height: 12,
                          ),
                          Text(
                                'Ea excepteur in excepteur ad eiusmod fugiat in dolore pariatur sunt cupidatat. Excepteur irure elit reprehenderit sint ipsum dolore aute ea exercitation enim velit do veniam. Eiusmod do culpa ullamco sit adipisicing ullamco velit nostrud dolore nulla anim et. Labore eiusmod anim ut dolor dolore dolore dolore. Voluptate consectetur elit reprehenderit ullamco in pariatur est.',
                                style: bodyText2(context),
                          ),
                             ],
                           ),

                          const SizedBox(
                            height: 24,
                          ),

                          Text(
                            'Bible Reading',
                            style: subtitle1(context),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Ea excepteur in excepteur ad eiusmod fugiat in dolore pariatur sunt cupidatat. Excepteur irure elit reprehenderit sint ipsum dolore aute ea exercitation enim velit do veniam. Eiusmod do culpa ullamco sit adipisicing ullamco velit nostrud dolore nulla anim et. Labore eiusmod anim ut dolor dolore dolore dolore. Voluptate consectetur elit reprehenderit ullamco in pariatur est.',
                            style: bodyText2(context),
                          ),

                          const SizedBox(
                            height: 24,
                          ),

                          Text(
                            'Text',
                            style: subtitle1(context),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Anim ex consequat cillum ea et veniam officia in qui consequat id. Veniam non pariatur sit amet nulla ex excepteur aute officia mollit aute quis. Minim anim qui minim commodo proident ipsum consequat commodo ad. Eiusmod dolor nulla duis pariatur cupidatat ex eiusmod reprehenderit.\nAliquip sunt amet veniam quis quis sit consequat officia. Amet eiusmod proident officia irure incididunt enim mollit eu ea sit minim laborum dolore. Est eu minim occaecat anim mollit deserunt nulla aute amet amet duis. Consequat deserunt exercitation enim id.\nVelit eu velit est dolore duis reprehenderit irure culpa labore anim. Id cupidatat veniam aliqua id minim pariatur eu commodo laborum velit\nVelit commodo ipsum occaecat incididunt exercitation voluptate. Irure velit laboris ipsum voluptate occaecat incididunt ullamco enim quis qui. Nisi sit consequat labore eu. Adipisicing cillum quis esse culpa officia aute deserunt ipsum dolor amet consectetur aute.Culpa est culpa amet do sit duis. Sunt ipsum et sit adipisicing ullamco. Sunt ut esse eiusmod et ut consequat adipisicing proident exercitation mollit nisi aliqua reprehenderit fugiat. Fugiat reprehenderit consequat labore exercitation quis dolor cillum cillum elit occaecat.',
                            style: bodyText2(context),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}