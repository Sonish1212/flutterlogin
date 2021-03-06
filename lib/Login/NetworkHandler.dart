import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class NetworkHandler{
  String baseurl= "https://immense-anchorage-17004.herokuapp.com";
  var log =Logger();

  
  Future get(String url) async
  {
    url=formater(url);
    var response = await http.get(Uri.encodeFull(url));
    if (response.statusCode == 200|| response.statusCode == 201) {
      log.i(response.body);
      return json.decode(response.body);
    }
  }

  Future<dynamic> post(String url, Map<String, String> body)async
  {
    url= formater(url);

    var response= await http.post(url,
        headers: {"Content-type": "application/json"},
      body: json.encode(body),
    );
    if(response.statusCode==200 || response.statusCode==201)
      {
        log.i(response.body);
        return response;
      }
    log.d(response.body);
    log.d(response.statusCode);
  }

  String formater(String url)
  {
    return baseurl + url;
  }
}
