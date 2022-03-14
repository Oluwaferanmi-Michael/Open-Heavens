class Chapters {
  List<Data>? data;

  Chapters({this.data});

  Chapters.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? id;
  String? bibleId;
  String? bookId;
  String? number;
  String? reference;

  Data({this.id, this.bibleId, this.bookId, this.number, this.reference});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bibleId = json['bibleId'];
    bookId = json['bookId'];
    number = json['number'];
    reference = json['reference'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['bibleId'] = bibleId;
    data['bookId'] = bookId;
    data['number'] = number;
    data['reference'] = reference;
    return data;
  }
}
