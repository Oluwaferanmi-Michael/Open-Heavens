import 'package:flutter/material.dart';

import '../../Models/hymn_model.dart';
import '../../util/constants.dart';

Widget errorMessage(BuildContext context) => const Center(child: Expanded(child: Text('sorry an error occured while fetching the hymns !', textAlign: TextAlign.center,)));


Widget loading(BuildContext context) => CircularProgressIndicator(
  color: blue,
  strokeWidth: 1.5,

);


Widget hymnList(BuildContext context, {List<HymnModel>? hymns}) => ListView.builder(
  itemCount: hymns?.length,
  itemBuilder: (context, index) {
    final hymn = hymns![index];
    return ListTile(
      title: Text(
        hymn.title, style: bodyText(context),
      ),
    );
  }
);