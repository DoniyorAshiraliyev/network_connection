import 'models/album_model.dart';
import 'services/apis_service.dart';
import 'services/network_service.dart';

void main() async {
  Network http = Network();
  String result = await http.GET(Api.baseUrl, Api.album.path, 1);
  Album album = http.parseOneAlbum(result);
  print(album);

  final newAlbum = Album(1, 10, "My Album");
  String resultPost = await http.POST(Api.baseUrl, Api.album.path, newAlbum.toJson());
  print(resultPost);

  newAlbum.title = "My Album Updated";
  // update
  String resultUpdate = await http.PUT(Api.baseUrl, Api.album.path, newAlbum.id, newAlbum.toJson());
  print(await http.DEL(Api.baseUrl, Api.album.path, 1));
  http.close();
}
