import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper{
  NetworkHelper({this.url});
  final String url;

  Future<dynamic> getCurrentData() async{
//    try{
//      http.Response response = await http.get(url);
//      if(response.statusCode==200){
//        return jsonDecode(response.body);
//      }
//    }catch(e){
//      print('Unable to get data. Try again.');
//    }

      http.Response response = await http.get(url);
      if(response.statusCode==200){
        return jsonDecode(response.body);
      }
  }




}