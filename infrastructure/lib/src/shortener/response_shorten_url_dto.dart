import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infrastructure/src/shortener/links_dto.dart';

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
