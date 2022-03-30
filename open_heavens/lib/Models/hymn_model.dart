// To parse this JSON data, do
//
//     final hymnModel = hymnModelFromJson(jsonString);

import 'dart:convert';

HymnModel hymnModelFromJson(String str) => HymnModel.fromJson(json.decode(str));

// String hymnModelToJson(HymnModel data) => json.encode(data.toJson());

class HymnModel {
  Map<Hymns, dynamic>? hymns;
  Categories? categories;

  HymnModel({this.hymns, this.categories});

  HymnModel.fromJson(Map<String, dynamic> json) {
    hymns = (json['hymns'] != null ? Hymns.fromJson(json['hymns']) : null) as Map<Hymns, dynamic>?;
    categories = json['categories'] != null
        ? Categories.fromJson(json['categories'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (hymns != null) {
      data['hymns'] = hymns;
    }
    if (categories != null) {
      data['categories'] = categories!.toJson();
    }
    return data;
  }
}



class Hymns {
  Hymns({
    this.number,
    this.title,
    this.titleWithHymnNumber,
    this.chorus,
    this.verses,
    this.sound,
    this.category,
  });

  String? number;
  String? title;
  String? titleWithHymnNumber;
  dynamic? chorus;
  List<String>? verses;
  String? sound;
  String? category;

  factory Hymns.fromJson(Map<String, dynamic> json) => Hymns(
        number: json["number"],
        title: json["title"],
        titleWithHymnNumber: json["titleWithHymnNumber"],
        chorus: json["chorus"],
        verses: List<String>.from(json["verses"].map((x) => x)),
        sound: json["sound"],
        category: json["category"],
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "title": title,
        "titleWithHymnNumber": titleWithHymnNumber,
        "chorus": chorus,
        "verses": List<dynamic>.from(verses!.map((x) => x)),
        "sound": sound,
        "category": category,
      };
}


class Categories {
  Categories({
    this.admonition,
    this.adoration,
    this.assurance,
    // this.bloodOfJesus,
    // this.christOurSaviour,
    // this.christianLife,
    // this.christianServiceandReward,
    // this.commitment,
    // this.conflictAndVictory,
    // this.divineHealing,
    // this.evangelism,
    // this.graceAndForgiveness,
    // this.heaven,
    // this.holySpirit,
    this.invitation,
    this.prayer,
    this.rapture,
    // this.sanctification,
    // this.specialOccasions,
    // this.theLordsLoveandCare,
    // this.warning
  });

  String? admonition;
  String? adoration;
  String? assurance;
  String? invitation;
  String? prayer;
  String? rapture;
  // String? commitment;
  // String? warning;
  // String? theLordsLoveandCare;
  // String? sanctification;
  // String? specialOccasions;
  // String? bloodOfJesus;
  // String? christianServiceandReward;
  // String? christianLife;
  // String? christOurSaviour;
  // String? evangelism;
  // String? graceAndForgiveness;
  // String? divineHealing;
  // String? conflictAndVictory;
  // String? heaven;
  // String? holySpirit;
  

  factory Categories.fromJson(Map<String, dynamic> json) => Categories(
        admonition : json['admonition'],
        adoration: json['adoration'],
        assurance: json['assurance'],
        invitation: json['invitation'],
        prayer: json['prayer'],
        rapture: json['rapture'],
        // admonition: json['admonition'],
        // admonition : json['admonition'],
        // admonition : json['admonition'],
        // admonition : json['admonition'],
        // admonition : json['admonition'],
        // admonition: json['admonition'],
        // admonition : json['admonition'],
        // admonition : json['admonition'],
        // admonition : json['admonition'],
        // admonition : json['admonition'],
        // admonition : json['admonition'],

      );

  Map<String, dynamic> toJson() => {
        
      };
}
