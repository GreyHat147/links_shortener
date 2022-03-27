import 'package:test/test.dart';
import 'package:infrastructure/infrastructure.dart';

void main() {
  group("LinksDto", () {
    test("should return a LinksDto from a json object", () {
      //Arrange
      Map<String, dynamic> json = {
        "self": "o",
        "short": "https://url-shortener-nu.herokuapp.com/short/60328"
      };
      //Act

      final LinksDto linksDto = LinksDto.fromJson(json);

      //Assert
      final LinksDto expectedDto = LinksDto(
        self: "o",
        short: "https://url-shortener-nu.herokuapp.com/short/60328",
      );

      expect(linksDto, expectedDto);
    });
  });
}
