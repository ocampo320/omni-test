import 'package:http/http.dart';

class ConnectionService {
  late Client _client;

  ConnectionService({required Client httpClient}) {
    _client = httpClient;
  }

  Client returnConnection() {
    return _client;
  }
}
