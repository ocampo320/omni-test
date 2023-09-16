import 'dart:convert';

import 'package:omni_test/core/api_manager.dart';
import 'package:omni_test/core/app_config.dart';
import 'package:omni_test/data/models/Photo.dart';

class PhotoService {
  final ApiManager apiManager;
  final AppConfig appConfig;
  PhotoService(this.apiManager, this.appConfig);
  Future<List<Photo>> getPhotos() async {
    try {
      final response = await apiManager.getAPICall(
        appConfig.baseUrl,
        headers: {
          "Accept": "application/json; charset=utf-8",
          "content-type": "application/json; charset=utf-8",
        },
      );

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body) as List<dynamic>;
        final List<Photo> photos = jsonData.map((data) {
          return Photo.fromJson(
              data); // Implementa este método según tu modelo de datos
        }).toList();
        return photos;
      } else {
        throw 'Error en la llamada a la API: ${response.statusCode}';
      }
    } catch (e) {
      throw 'Error en la llamada a la API: $e';
    }
  }
}
