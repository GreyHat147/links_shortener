import 'package:freezed_annotation/freezed_annotation.dart';

part 'links_dto.freezed.dart';
part 'links_dto.g.dart';

@freezed
class LinksDto with _$LinksDto {
  /// Constructor receiving all required data
  const factory LinksDto({
    required String self,
    required String short,
  }) = _LinksDto;

  /// Creates a [LinksDto] from a JSON
  factory LinksDto.fromJson(Map<String, dynamic> json) =>
      _$LinksDtoFromJson(json);
}
