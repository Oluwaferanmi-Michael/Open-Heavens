
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      appBar: AppBar(
        leading: IconButton(icon: back, onPressed: () => Navigator.pop(context),
        ),
        elevation: 0,
        backgroundColor: grey,
        bottom: PreferredSize(
          child: Container(
            padding: const EdgeInsets.all(24),
            child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'THE BEGINNING OF MONTHS',
                      style: secondaryHeader(context,
                          fontWeight: FontWeight.w600, color: black),
                    ),
                    Text(
                      'February 16th',
                      style: headerCaptions(context),
                    )
                  ],
                ),
          ),
          preferredSize: Size.fromHeight(72.h),
        ),
      ),

      body: SingleChildScrollView(child: devotional(context)),
    );
  }
}

     

Widget devotional(BuildContext context) => Padding(
  padding: const EdgeInsets.all(24.0),
  child: SizedBox(
    // height: height(1, context),
    child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
              'Memory Verse',
              style: secondaryHeader(context, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
              height: 12,
        ),
        Text(
              'Ea excepteur in excepteur ad eiusmod fugiat in dolore pariatur sunt cupidatat. Excepteur irure elit reprehenderit sint ipsum dolore aute ea exercitation enim velit do veniam. Eiusmod do culpa ullamco sit adipisicing ullamco velit nostrud dolore nulla anim et. Labore eiusmod anim ut dolor dolore dolore dolore. Voluptate consectetur elit reprehenderit ullamco in pariatur est.',
              style: bodyText(context),
        ),
            

        const SizedBox(
          height: 24,
        ),

        Text(
          'Bible Reading',
          style: secondaryHeader(context, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          'Ea excepteur in excepteur ad eiusmod fugiat in dolore pariatur sunt cupidatat. Excepteur irure elit reprehenderit sint ipsum dolore aute ea exercitation enim velit do veniam. Eiusmod do culpa ullamco sit adipisicing ullamco velit nostrud dolore nulla anim et. Labore eiusmod anim ut dolor dolore dolore dolore. Voluptate consectetur elit reprehenderit ullamco in pariatur est.',
          style: bodyText(context),
        ),

        const SizedBox(
          height: 24,
        ),

        Text(
          'Text',
          style: secondaryHeader(context, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          'Anim ex consequat cillum ea et veniam officia in qui consequat id. Veniam non pariatur sit amet nulla ex excepteur aute officia mollit aute quis. Minim anim qui minim commodo proident ipsum consequat commodo ad. Eiusmod dolor nulla duis pariatur cupidatat ex eiusmod reprehenderit.\nAliquip sunt amet veniam quis quis sit consequat officia. Amet eiusmod proident officia irure incididunt enim mollit eu ea sit minim laborum dolore. Est eu minim occaecat anim mollit deserunt nulla  aute amet amet duis. Consequat deserunt exercitation enim id.\nVelit eu velit est dolore duis reprehenderit irure culpa labore anim. Id cupidatat veniam aliqua id minim pariatur eu commodo laborum velit\nVelit commodo ipsum occaecat incididunt exercitation voluptate. Irure velit laboris ipsum voluptate occaecat incididunt ullamco enim quis qui. Nisi sit consequat labore eu. Adipisicing cillum quis esse culpa officia aute deserunt ipsum dolor amet consectetur aute.Culpa est culpa amet do sit duis. Sunt ipsum et sit adipisicing ullamco. Sunt ut esse eiusmod et ut consequat adipisicing proident exercitation mollit nisi aliqua reprehenderit fugiat. Fugiat reprehenderit consequat labore exercitation quis dolor cillum cillum elit occaecat.',
          style: bodyText(context),
        ),])
    )
 );