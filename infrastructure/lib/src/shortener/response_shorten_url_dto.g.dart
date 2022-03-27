// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_shorten_url_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseShortenUrlDto _$$_ResponseShortenUrlDtoFromJson(
        Map<String, dynamic> json) =>
    _$_ResponseShortenUrlDto(
      alias: json['alias'] as String,
      links: LinksDto.fromJson(json['_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResponseShortenUrlDtoToJson(
        _$_ResponseShortenUrlDto instance) =>
    <String, dynamic>{
      'alias': instance.alias,
      '_links': instance.links.toJson(),
    };
