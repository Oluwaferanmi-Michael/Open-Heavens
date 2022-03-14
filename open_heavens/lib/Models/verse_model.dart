class Verse {
  List<Data>? data;

  Verse({this.data});

  Verse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
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

  Data(
      {this.id,
      this.orgId,
      this.bookId,
      this.chapterId,
      this.bibleId,
      this.reference});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orgId = json['orgId'];
    bookId = json['bookId'];
    chapterId = json['chapterId'];
    bibleId = json['bibleId'];
    reference = json['reference'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['orgId'] = this.orgId;
    data['bookId'] = this.bookId;
    data['chapterId'] = this.chapterId;
    data['bibleId'] = this.bibleId;
    data['reference'] = this.reference;
    return data;
  }
}
