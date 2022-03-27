import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infrastructure/infrastructure.dart';

part 'response_shorten_url_dto.freezed.dart';
part 'response_shorten_url_dto.g.dart';

@freezed
class ResponseShortenUrlDto with _$ResponseShortenUrlDto {
  /// Constructor receiving all required data
  @JsonSerializable(explicitToJson: true)
  const factory ResponseShortenUrlDto({
    required String alias,
    @JsonKey(name: '_links') required LinksDto links,
  }) = _ResponseShortenUrlDto;

  /// Creates a [ResponseShortenUrlDto] from a JSON
  factory ResponseShortenUrlDto.fromJson(Map<String, dynamic> json) =>
      _$ResponseShortenUrlDtoFromJson(json);
}

///extension of [PortfolioDbDto] to implement additional methods
extension ResponseShortenUrlDtoX on ResponseShortenUrlDto {
  ///Method to convert from ResponseShortenUrlDto object to entity object
  ShortenedUrl toEntity() => ShortenedUrl(
        alias: alias,
        initialUrl: links.self,
        url: links.short,
      );
}
