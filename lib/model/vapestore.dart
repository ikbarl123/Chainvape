
class vapestore
{
 late double _latitude;
 late double _longtitude;
 late String _namaToko;
 late String _alamat;
 late String _img;

 void addCoordinate(double Ltd, double Lng)
 {
   this._latitude=Ltd;
   this._longtitude=Lng;
 } 

  void addNamaToko(String namaToko)
  {
    this._namaToko=namaToko;
  }

  void addAlamat(String alamat)
  {
    this._alamat=alamat;
  }
  
  void addImg(String img)
  {
    this._img=img;
  }

}