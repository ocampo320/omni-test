import 'dart:async';

import 'package:internet_connection_checker/internet_connection_checker.dart';



class NetworkService {
  final InternetConnectionChecker internetConnectionChecker;

  NetworkService({required this.internetConnectionChecker});

  Future<bool> hasNetwork() {
    return internetConnectionChecker.hasConnection;
  }
}
