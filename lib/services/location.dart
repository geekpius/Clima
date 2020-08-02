import 'package:geolocator/geolocator.dart';

class Location{
  double longitude;
  double latitute;

  Future<void> getCurrentLocation() async{
//    api.openweathermap.org/data/2.5/weather?q={city name}&appid={your api key}
    try{
      Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      longitude = position.longitude;
      latitute = position.latitude;
    }catch(e){}
  }

}