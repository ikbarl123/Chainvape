import 'dart:convert';


/// id_store : "1"
/// lat : 1.0
/// lng : 1.0
/// namatoko : "1"
/// alamat : "1"
/// imgurl : "1"

Vapestore VapestoreFromJson(String str) => Vapestore.fromJson(json.decode(str));
String VapestoreToJson(Vapestore data) => json.encode(data.toJson());
class Vapestore {
  Vapestore({
      int? idStore, 
      double? lat, 
      double? lng, 
      String? namatoko, 
      String? alamat, 
      String? imgurl,}){
    _idStore = idStore;
    _lat = lat;
    _lng = lng;
    _namatoko = namatoko;
    _alamat = alamat;
    _imgurl = imgurl;
}

  Vapestore.fromJson(dynamic json) {
    _idStore = json['id_store'];
    _lat = json['lat'];
    _lng = json['lng'];
    _namatoko = json['namatoko'];
    _alamat = json['alamat'];
    _imgurl = json['imgurl'];
  }
  int? _idStore;
  double? _lat;
  double? _lng;
  String? _namatoko;
  String? _alamat;
  String? _imgurl;

  int? get idStore => _idStore;
  double? get lat => _lat;
  double? get lng => _lng;
  String? get namatoko => _namatoko;
  String? get alamat => _alamat;
  String? get imgurl => _imgurl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id_store'] = _idStore;
    map['lat'] = _lat;
    map['lng'] = _lng;
    map['namatoko'] = _namatoko;
    map['alamat'] = _alamat;
    map['imgurl'] = _imgurl;
    return map;
  }


}