import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> weatherReader(String country) async {
  String uri =
      'https://api.openweathermap.org/data/2.5/weather?q=$country&appid=c3b85d69c13004f6e0b1499d3eb6c149';

  var url = Uri.parse(uri);
  var response = await http.get(url);

  //Checking the status code
  int statusCode = response.statusCode;
  Map res;
  if (statusCode == 200) {
    Map<String, String> headers = response.headers;
    // and the pages content
    var contentType = headers['content-type'];

    //converted to a json
    String json = response.body;

    res = jsonDecode(json);
    print(res["main"]["temp"]);
  }
}
