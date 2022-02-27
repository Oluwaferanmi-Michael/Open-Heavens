class Bible {
  List<Data>? data;

  Bible({this.data});

  Bible.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? id;
  String? dblId;
  Null relatedDbl;
  String? name;
  String? nameLocal;
  String? abbreviation;
  String? abbreviationLocal;
  String? description;
  String? descriptionLocal;
  Language? language;
  List<Countries>? countries;
  String? type;
  String? updatedAt;
  List<AudioBibles>? audioBibles;

  Data(
      {this.id,
      this.dblId,
      this.relatedDbl,
      this.name,
      this.nameLocal,
      this.abbreviation,
      this.abbreviationLocal,
      this.description,
      this.descriptionLocal,
      this.language,
      this.countries,
      this.type,
      this.updatedAt,
      this.audioBibles});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    dblId = json['dblId'];
    relatedDbl = json['relatedDbl'];
    name = json['name'];
    nameLocal = json['nameLocal'];
    abbreviation = json['abbreviation'];
    abbreviationLocal = json['abbreviationLocal'];
    description = json['description'];
    descriptionLocal = json['descriptionLocal'];
    language = json['language'] != null
        ? Language.fromJson(json['language'])
        : null;
    if (json['countries'] != null) {
      countries = <Countries>[];
      json['countries'].forEach((v) {
        countries?.add(Countries.fromJson(v));
      });
    }
    type = json['type'];
    updatedAt = json['updatedAt'];
    if (json['audioBibles'] != null) {
      audioBibles = <AudioBibles>[];
      json['audioBibles'].forEach((v) {
        audioBibles?.add(AudioBibles.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['dblId'] = dblId;
    data['relatedDbl'] = relatedDbl;
    data['name'] = name;
    data['nameLocal'] = nameLocal;
    data['abbreviation'] = abbreviation;
    data['abbreviationLocal'] = abbreviationLocal;
    data['description'] = description;
    data['descriptionLocal'] = descriptionLocal;
    if (language != null) {
      data['language'] = language?.toJson();
    }
    if (countries != null) {
      data['countries'] = countries?.map((v) => v.toJson()).toList();
    }
    data['type'] = type;
    data['updatedAt'] = updatedAt;
    if (audioBibles != null) {
      data['audioBibles'] = audioBibles?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Language {
  String? id;
  String? name;
  String? nameLocal;
  String? script;
  String? scriptDirection;

  Language(
      {this.id, this.name, this.nameLocal, this.script, this.scriptDirection});

  Language.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    nameLocal = json['nameLocal'];
    script = json['script'];
    scriptDirection = json['scriptDirection'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['nameLocal'] = nameLocal;
    data['script'] = script;
    data['scriptDirection'] = scriptDirection;
    return data;
  }
}

class Countries {
  String? id;
  String? name;
  String? nameLocal;

  Countries({this.id, this.name, this.nameLocal});

  Countries.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    nameLocal = json['nameLocal'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['nameLocal'] = nameLocal;
    return data;
  }
}

class AudioBibles {
  String? id;
  String? name;
  String? nameLocal;
  String? dblId;

  AudioBibles({this.id, this.name, this.nameLocal, this.dblId});

  AudioBibles.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    nameLocal = json['nameLocal'];
    dblId = json['dblId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['nameLocal'] = nameLocal;
    data['dblId'] = dblId;
    return data;
  }
}
