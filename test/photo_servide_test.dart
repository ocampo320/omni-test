import 'dart:convert';
import 'package:omni_test/data/models/photo.dart';
import 'package:test/test.dart';
import 'package:http/http.dart' as http;
import 'package:nock/nock.dart';

void main() {
  setUpAll(() {
    nock.init();
  });

  setUp(() {
    nock.cleanAll();
  });

  test("Services photo test", () async {
    final interceptor =
        nock("https://jsonplaceholder.typicode.com").get("/photos")
          ..reply(
            200,
            jsonEncode([
              {
                "albumId": 1,
                "id": 1,
                "title": "title",
                "url": "url",
                "thumbnailUrl": "url"
              }
            ]),
          );

    final response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));

    expect(interceptor.isDone, true);
    expect(response.statusCode, 200);

    final List<dynamic> responseData = jsonDecode(response.body);

    // Convierte los mapas JSON en objetos Photo
    final List<Photo> photos =
        responseData.map((data) => Photo.fromJson(data)).toList();

    // Compara los objetos Photo con los valores esperados
    expect(
      photos,
      [
        Photo(
            albumId: 1, id: 1, title: "title", url: "url", thumbnailUrl: "url")
      ],
    );
  });
}
