class Passage {
  Data? data;
  Meta? meta;

  Passage({this.data, this.meta});

  Passage.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    return data;
  }
}

class Data {
  String? id;
  String? orgId;
  String? bibleId;
  String? bookId;
  List<String>? chapterIds;
  String? reference;
  String? content;
  int? verseCount;
  String? copyright;

  Data(
      {this.id,
      this.orgId,
      this.bibleId,
      this.bookId,
      this.chapterIds,
      this.reference,
      this.content,
      this.verseCount,
      this.copyright});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orgId = json['orgId'];
    bibleId = json['bibleId'];
    bookId = json['bookId'];
    chapterIds = json['chapterIds'].cast<String>();
    reference = json['reference'];
    content = json['content'];
    verseCount = json['verseCount'];
    copyright = json['copyright'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['orgId'] = this.orgId;
    data['bibleId'] = this.bibleId;
    data['bookId'] = this.bookId;
    data['chapterIds'] = this.chapterIds;
    data['reference'] = this.reference;
    data['content'] = this.content;
    data['verseCount'] = this.verseCount;
    data['copyright'] = this.copyright;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fums'] = this.fums;
    data['fumsId'] = this.fumsId;
    data['fumsJsInclude'] = this.fumsJsInclude;
    data['fumsJs'] = this.fumsJs;
    data['fumsNoScript'] = this.fumsNoScript;
    return data;
  }
}
