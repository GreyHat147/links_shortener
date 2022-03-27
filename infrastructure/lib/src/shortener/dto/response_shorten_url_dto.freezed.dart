// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_shorten_url_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseShortenUrlDto _$ResponseShortenUrlDtoFromJson(
    Map<String, dynamic> json) {
  return _ResponseShortenUrlDto.fromJson(json);
}

/// @nodoc
class _$ResponseShortenUrlDtoTearOff {
  const _$ResponseShortenUrlDtoTearOff();

  _ResponseShortenUrlDto call(
      {required String alias,
      @JsonKey(name: '_links') required LinksDto links}) {
    return _ResponseShortenUrlDto(
      alias: alias,
      links: links,
    );
  }

  ResponseShortenUrlDto fromJson(Map<String, Object?> json) {
    return ResponseShortenUrlDto.fromJson(json);
  }
}

/// @nodoc
const $ResponseShortenUrlDto = _$ResponseShortenUrlDtoTearOff();

/// @nodoc
mixin _$ResponseShortenUrlDto {
  String get alias => throw _privateConstructorUsedError;
  @JsonKey(name: '_links')
  LinksDto get links => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseShortenUrlDtoCopyWith<ResponseShortenUrlDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseShortenUrlDtoCopyWith<$Res> {
  factory $ResponseShortenUrlDtoCopyWith(ResponseShortenUrlDto value,
          $Res Function(ResponseShortenUrlDto) then) =
      _$ResponseShortenUrlDtoCopyWithImpl<$Res>;
  $Res call({String alias, @JsonKey(name: '_links') LinksDto links});

  $LinksDtoCopyWith<$Res> get links;
}

/// @nodoc
class _$ResponseShortenUrlDtoCopyWithImpl<$Res>
    implements $ResponseShortenUrlDtoCopyWith<$Res> {
  _$ResponseShortenUrlDtoCopyWithImpl(this._value, this._then);

  final ResponseShortenUrlDto _value;
  // ignore: unused_field
  final $Res Function(ResponseShortenUrlDto) _then;

  @override
  $Res call({
    Object? alias = freezed,
    Object? links = freezed,
  }) {
    return _then(_value.copyWith(
      alias: alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as LinksDto,
    ));
  }

  @override
  $LinksDtoCopyWith<$Res> get links {
    return $LinksDtoCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value));
    });
  }
}

/// @nodoc
abstract class _$ResponseShortenUrlDtoCopyWith<$Res>
    implements $ResponseShortenUrlDtoCopyWith<$Res> {
  factory _$ResponseShortenUrlDtoCopyWith(_ResponseShortenUrlDto value,
          $Res Function(_ResponseShortenUrlDto) then) =
      __$ResponseShortenUrlDtoCopyWithImpl<$Res>;
  @override
  $Res call({String alias, @JsonKey(name: '_links') LinksDto links});

  @override
  $LinksDtoCopyWith<$Res> get links;
}

/// @nodoc
class __$ResponseShortenUrlDtoCopyWithImpl<$Res>
    extends _$ResponseShortenUrlDtoCopyWithImpl<$Res>
    implements _$ResponseShortenUrlDtoCopyWith<$Res> {
  __$ResponseShortenUrlDtoCopyWithImpl(_ResponseShortenUrlDto _value,
      $Res Function(_ResponseShortenUrlDto) _then)
      : super(_value, (v) => _then(v as _ResponseShortenUrlDto));

  @override
  _ResponseShortenUrlDto get _value => super._value as _ResponseShortenUrlDto;

  @override
  $Res call({
    Object? alias = freezed,
    Object? links = freezed,
  }) {
    return _then(_ResponseShortenUrlDto(
      alias: alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as LinksDto,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ResponseShortenUrlDto implements _ResponseShortenUrlDto {
  const _$_ResponseShortenUrlDto(
      {required this.alias, @JsonKey(name: '_links') required this.links});

  factory _$_ResponseShortenUrlDto.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseShortenUrlDtoFromJson(json);

  @override
  final String alias;
  @override
  @JsonKey(name: '_links')
  final LinksDto links;

  @override
  String toString() {
    return 'ResponseShortenUrlDto(alias: $alias, links: $links)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseShortenUrlDto &&
            const DeepCollectionEquality().equals(other.alias, alias) &&
            const DeepCollectionEquality().equals(other.links, links));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(alias),
      const DeepCollectionEquality().hash(links));

  @JsonKey(ignore: true)
  @override
  _$ResponseShortenUrlDtoCopyWith<_ResponseShortenUrlDto> get copyWith =>
      __$ResponseShortenUrlDtoCopyWithImpl<_ResponseShortenUrlDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseShortenUrlDtoToJson(this);
  }
}

abstract class _ResponseShortenUrlDto implements ResponseShortenUrlDto {
  const factory _ResponseShortenUrlDto(
          {required String alias,
          @JsonKey(name: '_links') required LinksDto links}) =
      _$_ResponseShortenUrlDto;

  factory _ResponseShortenUrlDto.fromJson(Map<String, dynamic> json) =
      _$_ResponseShortenUrlDto.fromJson;

  @override
  String get alias;
  @override
  @JsonKey(name: '_links')
  LinksDto get links;
  @override
  @JsonKey(ignore: true)
  _$ResponseShortenUrlDtoCopyWith<_ResponseShortenUrlDto> get copyWith =>
      throw _privateConstructorUsedError;
}
