import 'package:http/http.dart' as http;
import 'dart:convert';

class Api {
  static Api _instance = Api._internal();
  Api._internal() {
    _instance = this;
  }
  factory Api() => _instance;

  final JsonDecoder _decoder = const JsonDecoder();
  final JsonEncoder _encoder = const JsonEncoder();
  final String baseUrl = "https://ucc-unicare.herokuapp.com";
  Map<String, String> headers = {
    "content-type": "application/json",
    "connection": "keep-alive",
  };

  Future<dynamic> get(String url) {
    return http
        .get(Uri.parse(baseUrl + url), headers: headers)
        .then((http.Response response) {
      final String res = response.body;
      return _decoder.convert(res);
    });
  }

  Future<dynamic> post(String url, {body, encoding}) {
    return http
        .post(Uri.parse(baseUrl + url),
            body: _encoder.convert(body), headers: headers, encoding: encoding)
        .then((http.Response response) {
      final String res = response.body;
      return _decoder.convert(res);
    });
  }

  Future<dynamic> put(String url, {body, encoding}) {
    return http
        .put(Uri.parse(baseUrl + url),
            body: _encoder.convert(body), headers: headers, encoding: encoding)
        .then((http.Response response) {
      final String res = response.body;
      return _decoder.convert(res);
    });
  }

  Future<dynamic> delete(String url, {body, encoding}) {
    return http
        .delete(Uri.parse(baseUrl + url),
            body: _encoder.convert(body), headers: headers, encoding: encoding)
        .then((http.Response response) {
      final String res = response.body;
      return _decoder.convert(res);
    });
  }
}
