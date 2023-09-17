import 'dart:convert';
import 'package:omni_test/data/models/Photo.dart';
import 'package:http/http.dart' as http;

class PhotoService {
  PhotoService();
  Future<List<Photo>> getPhotos() async {
    try {
      const String url = "https://jsonplaceholder.typicode.com/photos";
      const header = {'Content-Type': 'application/json'};
      final http.Response photoResponse =
          await http.get(Uri.parse(url), headers: header);

      if (photoResponse.statusCode == 200) {
        final jsonData = json.decode(photoResponse.body) as List<dynamic>;

        final List<Photo> photos = jsonData.map((data) {
          return Photo.fromJson(
              data); // Implementa este método según tu modelo de datos
        }).toList();
        print(photos);
        return photos;
      } else {
        throw Exception("Error al consumir el servicio");
      }
    } catch (e) {
      throw 'Error en la llamada a la API: $e';
    }
  }
}
