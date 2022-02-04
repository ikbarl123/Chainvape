import 'dart:convert';
Thread threadFromJson(String str) => Thread.fromJson(json.decode(str));
String threadToJson(Thread data) => json.encode(data.toJson());
class Thread {
  Thread({
      int? id, 
      int? catId, 
      int? userId, 
      String? title, 
      String? text, 
      String? createdAt, 
      Author? author,}){
    _id = id;
    _catId = catId;
   // _userId = userId;
    _title = title;
    _text = text;
    _createdAt = createdAt;
    _author = author;
}

  Thread.fromJson(dynamic json) {
    _id = json['id'];
    _catId = json['cat_id'];
   // _userId = int.tryParse(json['user_id']);
    _title = json['title'];
    _text = json['text'];
    _createdAt = json['created_at'];
    _author = json['author'] != null ? Author.fromJson(json['author']) : null;
  }
  int? _id;
  int? _catId;
  //int? _userId;
  String? _title;
  String? _text;
  String? _createdAt;
  Author? _author;

  int? get id => _id;
  int? get catId => _catId;
  //int? get userId => _userId;
  String? get title => _title;
  String? get text => _text;
  String? get createdAt => _createdAt;
  Author? get author => _author;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['cat_id'] = _catId;
    //map['user_id'] = _userId;
    map['title'] = _title;
    map['text'] = _text;
    map['created_at'] = _createdAt;
    if (_author != null) {
      map['author'] = _author?.toJson();
    }
    return map;
  }

}

Author authorFromJson(String str) => Author.fromJson(json.decode(str));
String authorToJson(Author data) => json.encode(data.toJson());
class Author {
  Author({
      int? id, 
      String? name,}){
    _id = id;
    _name = name;
}

  Author.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
  }
  int? _id;
  String? _name;

  int? get id => _id;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    return map;
  }

}