import 'package:domain/domain.dart';
import 'package:test/test.dart';
import 'package:infrastructure/infrastructure.dart';

void main() {
  group("ResponseShortenUrlDto", () {
    test("should return a ResponseShortenUrlDto from a json object", () {
      //Arrange
      Map<String, dynamic> json = {
        "alias": "60328",
        "_links": {
          "self": "o",
          "short": "https://url-shortener-nu.herokuapp.com/short/60328"
        }
      };
      //Act

      final ResponseShortenUrlDto responseShortenUrlDto =
          ResponseShortenUrlDto.fromJson(json);

      //Assert

      final LinksDto linksDto = LinksDto(
        self: "o",
        short: "https://url-shortener-nu.herokuapp.com/short/60328",
      );
      final ResponseShortenUrlDto expected =
          ResponseShortenUrlDto(alias: "60328", links: linksDto);

      expect(responseShortenUrlDto, expected);
    });

    test("should return a ShortenedUrl from toEntity", () {
      //Arrange
      final LinksDto linksDto = LinksDto(
        self: "o",
        short: "https://url-shortener-nu.herokuapp.com/short/60328",
      );
      final ResponseShortenUrlDto responseShortenUrlDto =
          ResponseShortenUrlDto(alias: "60328", links: linksDto);
      //Act
      final ShortenedUrl shortenedUrl = responseShortenUrlDto.toEntity();

      //Assert

      final ShortenedUrl expectedShortenedUrl = ShortenedUrl(
        alias: "60328",
        initialUrl: "o",
        url: "https://url-shortener-nu.herokuapp.com/short/60328",
      );
      expect(shortenedUrl, expectedShortenedUrl);
    });
  });
}
