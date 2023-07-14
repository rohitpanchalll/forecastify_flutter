import 'dart:convert';

import 'package:http/http.dart' as http;

class Network {
  Network(this.url);

  final String url;

  void getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;

      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
