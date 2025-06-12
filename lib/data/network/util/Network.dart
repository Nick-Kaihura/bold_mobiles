import 'dart:convert';

import 'package:http/http.dart';

class Network {
  String url = "https://jsonplaceholder.typicode.com/";

  Client makeClient() {
    Client client = Client();
    return client;
  }

  Future<Response> get(String endPoint) async {
    return await makeClient().get(Uri.parse(url + endPoint));
  }

  Future<Response> postJson(String endPoint, String request) async {
    var headers = <String, String>{"ContentType": "application/json"};
    return await makeClient().post(Uri.parse(url + endPoint),
        body: jsonEncode(request), headers: headers);
  }

  Future<Response> getFormUrlEncoded(
      Map<String, String> body, String endpoint) async {
    var headers = <String, String>{
      "ContentType": "application/x-www-form-urlencoded"
    };
    Uri resourceUri = Uri.parse(url + endpoint);
    return await makeClient()
        .get(resourceUri.replace(queryParameters: body), headers: headers);
  }

  Future<Response> postFormUrlEncoded(String endPoint, String request) async {
    var headers = <String, String>{
      "ContentType": "application/x-www-form-urlencoded"
    };
    var encoding = Encoding.getByName("utf-8");
    return await makeClient().post(Uri.parse(url + endPoint),
        headers: headers, encoding: encoding, body: request);
  }
}
