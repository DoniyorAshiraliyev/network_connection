import 'dart:convert';
import 'dart:io';
import '../models/album_model.dart';

class Network {
  // class setting: singleton
  Network._();
  static final _instance = Network._();
  factory Network() => _instance;

  // object for connection network
  final _network = HttpClient();
  void close() => _network.close();

  // Methods
  Future<String> GET(String baseUrl, String path, [int? id]) async {
    final url = Uri.https(baseUrl, "$path${id != null ? "/$id": ""}");
    final request = await _network.getUrl(url);
    request.headers.contentType = ContentType("application", "json", charset: "utf-8");
    final response = await request.close();
    String result = await response.transform(utf8.decoder).join();
    return result;
  }

  Future<String> POST(String baseUrl, String path, Map<String, dynamic> body) async {
    final url = Uri.https(baseUrl, path);
    final request = await _network.postUrl(url);
    request.headers.contentType = ContentType("application", "json", charset: "utf-8");

    String data = jsonEncode(body);
    List<int> dataByte = utf8.encode(data);
    request.add(dataByte);

    final response = await request.close();
    String result = await response.transform(utf8.decoder).join();
    return result;
  }

  Future<String> PUT(String baseUrl, String path, int id, Map<String, dynamic> body) async {
    final url = Uri.https(baseUrl, "$path/$id");
    final request = await _network.putUrl(url);
    request.headers.contentType = ContentType("application", "json", charset: "utf-8");

    String data = jsonEncode(body);
    List<int> dataByte = utf8.encode(data);
    request.add(dataByte);

    final response = await request.close();
    String result = await response.transform(utf8.decoder).join();
    return result;
  }

  Future<String> PATCH(String baseUrl, String path, int id, Map<String, dynamic> body) async {
    final url = Uri.https(baseUrl, "$path/$id");
    final request = await _network.patchUrl(url);
    request.headers.contentType = ContentType("application", "json", charset: "utf-8");

    String data = jsonEncode(body);
    List<int> dataByte = utf8.encode(data);
    request.add(dataByte);

    final response = await request.close();
    String result = await response.transform(utf8.decoder).join();
    return result;
  }

  Future<String> DEL(String baseUrl, String path, int id) async {
    final url = Uri.https(baseUrl, "$path/$id");
    final request = await _network.deleteUrl(url);
    request.headers.contentType = ContentType("application", "json", charset: "utf-8");
    final response = await request.close();
    String result = await response.transform(utf8.decoder).join();
    return result;
  }

  // Parsing
  Album parseOneAlbum(String data) => Album.fromJson(jsonDecode(data));
}