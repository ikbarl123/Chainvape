
class Vapestore
{
 Vapestore(this._idstore,this._latitude,this._longtitude,this._namaToko,this._alamat,this._imgurl,this._distance);
 final String _idstore;
 final double _latitude;
 final double _longtitude;
 final String _namaToko;
 final String _alamat;
 final String _imgurl;
 final int _distance;

 // @override
 // List<Object> get props => [_idstore, _latitude, _longtitude,_namaToko,_alamat,_imgurl,_distance];

String getidstore(){
  return this._idstore;
}
String getnama(){
  return this._namaToko;
}
double getlat(){
  return this._latitude;
}
double getlng(){
  return this._longtitude;
}
String getaddr(){
  return this._alamat;
}
String getimg(){
  return this._imgurl;
}
}