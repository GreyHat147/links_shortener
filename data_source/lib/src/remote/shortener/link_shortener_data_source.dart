import 'package:data_source/src/urls.dart';
import 'package:infrastructure/infrastructure.dart';
import 'package:data_source/src/http_man/http_man.dart';

class LinkShortenerDataSource implements ILinkShortenerDataSource {
  LinkShortenerDataSource(this._dioMan);

  final DioMan _dioMan;

  @override
  Future<ResponseShortenUrlDto> shortenUrl(String url) async {
    String fullUrl = "$baseUrl/api/alias";
    return _dioMan
        .post(fullUrl, {
          "url": url,
        })
        .then(
          (response) => ResponseShortenUrlDto.fromJson(response),
        )
        .catchError((error) {
          throw Exception(error);
        });
  }
}
