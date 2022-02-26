class Books {
  List<Data>? data;

  Books({this.data});

  Books.fromJson(Map<String, dynamic> json) {
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
  String? abbreviation;
  String? name;
  String? nameLong;

  Data({this.id, this.bibleId, this.abbreviation, this.name, this.nameLong});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bibleId = json['bibleId'];
    abbreviation = json['abbreviation'];
    name = json['name'];
    nameLong = json['nameLong'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['bibleId'] = bibleId;
    data['abbreviation'] = abbreviation;
    data['name'] = name;
    data['nameLong'] = nameLong;
    return data;
  }
}
