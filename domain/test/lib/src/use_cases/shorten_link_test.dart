import 'package:domain/domain.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'shorten_link_test.mocks.dart';

@GenerateMocks(<Type>[ILinkShortenerRepository])
void main() {
  group("ShortenLinkUseCase", () {
    test("should verify that repository is receiving the correct information",
        () async {
      //Arrange
      final String url = "https://www.youtube.com";
      final MockILinkShortenerRepository repository =
          MockILinkShortenerRepository();

      final IShortenLink shortenLink = ShortenLink(repository);

      when(repository.shortenUrl(url)).thenAnswer(
        (_) => Future.value(
          ShortenedUrl(url),
        ),
      );

      //Act
      await shortenLink(url);

      //Assert
      verify(repository.shortenUrl(url));
    });

    test("should return a ShortenedUrl entity", () async {
      //Arrange
      final String url = "https://www.youtube.com";
      final MockILinkShortenerRepository repository =
          MockILinkShortenerRepository();

      final IShortenLink shortenLink = ShortenLink(repository);

      when(repository.shortenUrl(url)).thenAnswer(
        (_) => Future.value(
          ShortenedUrl(url),
        ),
      );

      //Act
      final ShortenedUrl shortenedUrl = await shortenLink(url);

      //Assert
      final ShortenedUrl expected = ShortenedUrl(url);
      expect(shortenedUrl, expected);
    });
  });
}
