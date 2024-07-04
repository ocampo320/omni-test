import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:omni_test/data/models/photo.dart';

class PhotoService {
  PhotoService();

  Future<List<Photo>> getPhotos() async {
    try {
      const url = "https://jsonplaceholder.typicode.com/photos";
      final headers = {'Content-Type': 'application/json'};

      final http.Response photoResponse =
          await http.get(Uri.parse(url), headers: headers);

      if (photoResponse.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(photoResponse.body);
        final List<Photo> photos =
            List<Photo>.from(jsonData.map((data) => Photo.fromJson(data)));

        return photos;
      } else {
        throw Exception(
            "Error: ${photoResponse.statusCode} - Error al consumir el servicio");
      }
    } catch (e) {
      throw Exception('Error en la llamada a la API: $e');
    }
  }
}
