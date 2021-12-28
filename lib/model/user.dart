import 'dart:ffi';

class user
{
  late String _nama;
  late String _username;

  void addNama(String nama)
  {
    this._nama=nama;
  }
  void addUsername(String username)
  {
    this._username=username;
  }

  String getNama(){
    return _nama;
  }
  String getUsername(){
    return _username;
  }
}
