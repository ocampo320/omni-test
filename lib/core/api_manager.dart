import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:omni_test/core/connection_service.dart';
import 'package:omni_test/core/constants/constans.dart';
import 'package:omni_test/core/global_exceptions.dart';
import 'package:omni_test/core/network_service.dart';




class ApiManager {
  final ConnectionService connectionService;
  final NetworkService networkService;

  late http.Client client;

  ApiManager({
    required this.connectionService,
    required this.networkService,
  }) {
    client = connectionService.returnConnection();
  }

  ///[serviceCode] Service code to send in traceability, in case it does not apply to send it empty Eg:
  /// ```dart
  /// serviceCode: "",
  /// ```
  ///This code may not apply in case the service is there before the user logs in and the code has not yet been saved token
  Future<dynamic> postAPICall(
    String url, {
    Object? body,
    Map<String, String>? headers,
    Duration timeLimit = const Duration(seconds: 80),
  }) async {
    dynamic responseJson;
    try {
      bool hasNetwork = await networkService.hasNetwork();
      if (!hasNetwork) {
        throw NoInternetConnectionException(Constants.errorNetwork);
      }

      final request = await client
          .post(
        Uri.parse(url),
        body: body,
        headers: headers,
      )
          .timeout(
        timeLimit,
        onTimeout: () {
          throw FetchDataException(Constants.errorConnecting);
        },
      );
      responseJson = _response(request);
    } on SocketException {
      throw FetchDataException(Constants.errorConnecting);
    }
    return responseJson;
  }

  Future<dynamic> getAPICall(
    String url, {
    Map<String, String>? headers,
    Duration timeLimit = const Duration(seconds: 80),
    String serviceCode = "",
  }) async {
    dynamic responseJson;
    try {
      bool hasNetwork = await networkService.hasNetwork();
      if (!hasNetwork) {
        throw NoInternetConnectionException(Constants.errorConnecting);
      }

      final request =
          await client.get(Uri.parse(url), headers: headers).timeout(
        timeLimit,
        onTimeout: () {
          throw FetchDataException(Constants.errorConnecting);
        },
      );
      
      responseJson = _response(request);
    } on SocketException {
      throw FetchDataException(Constants.errorConnecting);
    }
    return responseJson;
  }

  _response(response) {
    switch (response.statusCode) {
      case 200:
        if (response.body != null && response.body.toString().isNotEmpty) {
          if (response.headers['content-type']
              .toString()
              .contains("text/plain")) {
            return response.body.toString();
          }
          var responseJson = json.decode(response.body.toString());
          return responseJson;
        } else {
          return 'OK';
        }
      case 201:
        if (response.body != null && response.body.toString().isNotEmpty) {
          if (response.headers['content-type']
              .toString()
              .contains("text/plain")) {
            return response.body.toString();
          }
          var responseJson = json.decode(response.body.toString());
          return responseJson;
        } else {
          return 'OK';
        }
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      case 503:
      case 504:
      default:
        throw FetchDataException(response.body.toString());
    }
  }

}
