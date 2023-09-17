import 'package:flutter/cupertino.dart';


import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:omni_test/core/connection_service.dart';
import 'package:omni_test/core/network_service.dart';

class DependencyInjectionManager {
  static final instance = GetIt.instance;
 

  static Future<void> initialize() async {

   
    final intenerConnectionChecker = InternetConnectionChecker.createInstance();
    instance.registerSingleton<InternetConnectionChecker>(
      intenerConnectionChecker,
    );
    final internetConnectionService = NetworkService(
      internetConnectionChecker: instance<InternetConnectionChecker>(),
    );
    instance.registerLazySingleton<NetworkService>(
      () => internetConnectionService,
    );


    // HTTP Client
    final httpClient = http.Client();
    instance.registerSingleton<http.Client>(httpClient);

    instance.registerLazySingleton(() => ConnectionService(
          httpClient: instance<http.Client>(),
        ));

   

    debugPrint('💙 Dependecy injection has been initialized');
  }
}
