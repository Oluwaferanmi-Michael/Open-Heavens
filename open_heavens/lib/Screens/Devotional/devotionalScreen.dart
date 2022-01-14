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
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              flexibleSpace: FlexibleSpaceBar(
                background: Center(child: Expanded(child: Text('2022', maxLines: 2, style: headline1(context)))),
              ),
              leading: IconButton(onPressed: Navigator.of(context).pop, icon: const Icon(Icons.chevron_left)),
              backgroundColor: red,
              
            ),
          ],
        ),
      )
    );
  }
}