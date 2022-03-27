import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:mockito/annotations.dart';

import 'package:data_source/src/urls.dart';
import 'package:infrastructure/infrastructure.dart';
import 'package:data_source/src/http_man/dio_man.dart';
import 'package:data_source/src/remote/shortener/link_shortener_data_source.dart';

import 'link_shortener_data_source_test.mocks.dart';

@GenerateMocks(<Type>[DioMan])
void main() {
  group('LinkShortenerDataSource', () {
    test(
      "should return a ResponseShortenUrlDto if backend service response is successful ",
      () async {
        //Arrange
        final Map<String, dynamic> response = {
          "alias": "60328",
          "_links": {
            "self": "https://www.youtube.com",
            "short": "https://url-shortener-nu.herokuapp.com/short/60328"
          }
        };

        String urlToShorten = "https://www.youtube.com";
        String path = "$baseUrl/api/alias";

        MockDioMan mockDioMan = MockDioMan();

        when(mockDioMan.post(path, {"url": urlToShorten})).thenAnswer(
          (_) => Future<Map<String, dynamic>>.value(response),
        );

        final LinkShortenerDataSource linkShortenerDataSource =
            LinkShortenerDataSource(mockDioMan);

        //Act
        final ResponseShortenUrlDto responseShortenUrlDto =
            await linkShortenerDataSource.shortenUrl(urlToShorten);

        //Assert
        final ResponseShortenUrlDto expectedDto = ResponseShortenUrlDto(
          alias: "60328",
          links: LinksDto(
            self: "https://www.youtube.com",
            short: "https://url-shortener-nu.herokuapp.com/short/60328",
          ),
        );

        expect(responseShortenUrlDto, expectedDto);
      },
    );
  });
}
