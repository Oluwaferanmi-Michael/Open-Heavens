class Verse {
  Data? data;
  Meta? meta;

  Verse({this.data, this.meta});

  Verse.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['data'] = data;
    if (meta != null) {
      data['meta'] = meta!.toJson();
    }
    return data;
  }
}

class Data {
  String? id;
  String? orgId;
  String? bookId;
  String? chapterId;
  String? bibleId;
  String? reference;
  String? content;
  int? verseCount;
  String? copyright;
  Next? next;
  Next? previous;

  Data(
      {this.id,
      this.orgId,
      this.bookId,
      this.chapterId,
      this.bibleId,
      this.reference,
      this.content,
      this.verseCount,
      this.copyright,
      this.next,
      this.previous});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orgId = json['orgId'];
    bookId = json['bookId'];
    chapterId = json['chapterId'];
    bibleId = json['bibleId'];
    reference = json['reference'];
    content = json['content'];
    verseCount = json['verseCount'];
    copyright = json['copyright'];
    next = json['next'] != null ? Next.fromJson(json['next']) : null;
    previous =
        json['previous'] != null ? Next.fromJson(json['previous']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['orgId'] = orgId;
    data['bookId'] = bookId;
    data['chapterId'] = chapterId;
    data['bibleId'] = bibleId;
    data['reference'] = reference;
    data['content'] = content;
    data['verseCount'] = verseCount;
    data['copyright'] = copyright;
    if (next != null) {
      data['next'] = next!.toJson();
    }
    if (previous != null) {
      data['previous'] = previous!.toJson();
    }
    return data;
  }
}

class Next {
  String? id;
  String? number;

  Next({this.id, this.number});

  Next.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    number = json['number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['number'] = number;
    return data;
  }
}

class Meta {
  String? fums;
  String? fumsId;
  String? fumsJsInclude;
  String? fumsJs;
  String? fumsNoScript;

  Meta(
      {this.fums,
      this.fumsId,
      this.fumsJsInclude,
      this.fumsJs,
      this.fumsNoScript});

  Meta.fromJson(Map<String, dynamic> json) {
    fums = json['fums'];
    fumsId = json['fumsId'];
    fumsJsInclude = json['fumsJsInclude'];
    fumsJs = json['fumsJs'];
    fumsNoScript = json['fumsNoScript'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fums'] = fums;
    data['fumsId'] = fumsId;
    data['fumsJsInclude'] = fumsJsInclude;
    data['fumsJs'] = fumsJs;
    data['fumsNoScript'] = fumsNoScript;
    return data;
  }
}
