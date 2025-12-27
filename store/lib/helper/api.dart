import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class Api {
  String baseUrl = 'https://fakestoreapi.com';
  // Get
  Future<dynamic> get({required String url, String? token}) async {
    Map<String, String> header = {};

    if (token != null) {
      header.addAll({'Authorization': 'Bearer $token'});
    }

    log('url = $url  :  token = $token');
    http.Response response = await http.get(
      Uri.parse('$baseUrl/$url'),
      headers: header,
    );
    if (response.statusCode == 200) {
      log(response.body);
      return jsonDecode(response.body);
    } else {
      throw Exception('There is a problem status code ${response.statusCode}');
    }
  }

  // Post
  Future<dynamic> post({
    required String url,
    dynamic body,
    String? token,
  }) async {
    Map<String, String> header = {};

    if (token != null) {
      header.addAll({'Authorization': 'Bearer $token'});
    }

    http.Response response = await http.post(
      Uri.parse('$baseUrl/$url'),
      body: body,
      headers: header,
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);

      return data;
    } else {
      throw Exception(
        'There is a problem status code ${response.statusCode} with body ${jsonDecode(response.body)}',
      );
    }
  }

  // Put
  Future<dynamic> put({
    required String url,
    dynamic body,
    String? token,
  }) async {
    Map<String, String> header = {};
    header.addAll({'Content-Type': 'application/x-www-form-urlencoded'});
    if (token != null) {
      header.addAll({'Authorization': 'Bearer $token'});
    }

    print('url = $url : body = $body : token = $token');

    http.Response response = await http.put(
      Uri.parse('$baseUrl/$url'),
      body: body,
      headers: header,
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      log('$data');
      return data;
    } else {
      throw Exception(
        'There is a problem status code ${response.statusCode} with body ${jsonDecode(response.body)}',
      );
    }
  }
}
