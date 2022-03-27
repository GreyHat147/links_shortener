import 'package:domain/domain.dart';
import 'package:infrastructure/src/shortener/link_shortener_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:mockito/annotations.dart';

import 'package:infrastructure/infrastructure.dart';
import 'link_shortener_repository_test.mocks.dart';

@GenerateMocks(<Type>[ILinkShortenerDataSource])
void main() {
  group('LinkShortenerRepository', () {
    test('should return a ShortedUrl entity', () async {
      //Arrange
      final String url = "https://www.youtube.com";
      final MockILinkShortenerDataSource mockILinkShortenerDataSource =
          MockILinkShortenerDataSource();
      final LinkShortenerRepository repository =
          LinkShortenerRepository(mockILinkShortenerDataSource);

      when(mockILinkShortenerDataSource.shortenUrl(url)).thenAnswer(
        (_) => Future.value(
          ResponseShortenUrlDto(
            alias: "1",
            links: LinksDto(
              self: url,
              short: "https://url-shortener-nu.herokuapp.com/short/1",
            ),
          ),
        ),
      );

      //Act
      final ShortenedUrl shortenedUrl = await repository.shortenUrl(url);

      //Assert
      final ShortenedUrl expectedEntity = ShortenedUrl(
        url: "https://url-shortener-nu.herokuapp.com/short/1",
        initialUrl: url,
        alias: "1",
      );

      expect(shortenedUrl, expectedEntity);
    });
  });
}
