import 'dart:convert';
Replies repliesFromJson(String str) => Replies.fromJson(json.decode(str));
String repliesToJson(Replies data) => json.encode(data.toJson());
class Replies {
  Replies({
      List<Reply>? reply,}){
    _reply = reply;
}

  Replies.fromJson(dynamic json) {
    if (json['reply'] != null) {
      _reply = [];
      json['reply'].forEach((v) {
        _reply?.add(Reply.fromJson(v));
      });
    }
  }
  List<Reply>? _reply;

  List<Reply>? get reply => _reply;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_reply != null) {
      map['reply'] = _reply?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

Reply replyFromJson(String str) => Reply.fromJson(json.decode(str));
String replyToJson(Reply data) => json.encode(data.toJson());
class Reply {
  Reply({
      int? id, 
      int? userId, 
      int? threadId, 
      String? text, 
      String? createdAt, 
      Owner? owner,}){
    _id = id;
    _userId = userId;
    _threadId = threadId;
    _text = text;
    _createdAt = createdAt;
    _owner = owner;
}

  Reply.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _threadId = json['thread_id'];
    _text = json['Text'];
    _createdAt = json['created_at'];
    _owner = json['owner'] != null ? Owner.fromJson(json['owner']) : null;
  }
  int? _id;
  int? _userId;
  int? _threadId;
  String? _text;
  String? _createdAt;
  Owner? _owner;

  int? get id => _id;
  int? get userId => _userId;
  int? get threadId => _threadId;
  String? get text => _text;
  String? get createdAt => _createdAt;
  Owner? get owner => _owner;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['thread_id'] = _threadId;
    map['Text'] = _text;
    map['created_at'] = _createdAt;
    if (_owner != null) {
      map['owner'] = _owner?.toJson();
    }
    return map;
  }

}

Owner ownerFromJson(String str) => Owner.fromJson(json.decode(str));
String ownerToJson(Owner data) => json.encode(data.toJson());
class Owner {
  Owner({
      int? id, 
      String? name,}){
    _id = id;
    _name = name;
}

  Owner.fromJson(dynamic json) {
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