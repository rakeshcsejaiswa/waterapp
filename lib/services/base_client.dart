import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:waterapp/services/app_exceptions.dart';

class BaseClient {
  static const int TIME_OUT_DURATION = 20;

//GET
  static Future<dynamic> get(String baseUrl, String api) async {
    var uri = Uri.parse(baseUrl + api);
    print("sdf:$uri");
    try {
      var response =
          await http.get(uri).timeout(Duration(seconds: TIME_OUT_DURATION));

      return _processResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    } on TimeoutException {
      throw ApiNotRespondingException('Api not responded in time');
    }
  }

//POST
  static Future<dynamic> post(
      String baseUrl, String api, dynamic payloadObj) async {
    var uri = Uri.parse(baseUrl + api);
    var payload = json.decode(payloadObj);
    try {
      var response =
          await http.post(uri).timeout(Duration(seconds: TIME_OUT_DURATION));
      return _processResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    } on TimeoutException {
      throw ApiNotRespondingException('Api not responded in time');
    }
  }

//DELETE
//OTHER

  static dynamic _processResponse(http.Response response) {
    response.request!.url;
    switch (response.statusCode) {
      case 200:
        var responseJson = utf8.decode(response.bodyBytes);
        return responseJson;

      case 400:
        throw BadRequestException(utf8.decode(response.bodyBytes));
      case 401:
      case 403:
        throw UnAuthorizedException(utf8.decode(response.bodyBytes));
      case 500:
      default:
        throw FetchDataException(
            'Error occured with code : ${response.statusCode}');
    }
  }
}
