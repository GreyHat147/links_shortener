// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'links_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LinksDto _$LinksDtoFromJson(Map<String, dynamic> json) {
  return _LinksDto.fromJson(json);
}

/// @nodoc
class _$LinksDtoTearOff {
  const _$LinksDtoTearOff();

  _LinksDto call({required String self, required String short}) {
    return _LinksDto(
      self: self,
      short: short,
    );
  }

  LinksDto fromJson(Map<String, Object?> json) {
    return LinksDto.fromJson(json);
  }
}

/// @nodoc
const $LinksDto = _$LinksDtoTearOff();

/// @nodoc
mixin _$LinksDto {
  String get self => throw _privateConstructorUsedError;
  String get short => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinksDtoCopyWith<LinksDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksDtoCopyWith<$Res> {
  factory $LinksDtoCopyWith(LinksDto value, $Res Function(LinksDto) then) =
      _$LinksDtoCopyWithImpl<$Res>;
  $Res call({String self, String short});
}

/// @nodoc
class _$LinksDtoCopyWithImpl<$Res> implements $LinksDtoCopyWith<$Res> {
  _$LinksDtoCopyWithImpl(this._value, this._then);

  final LinksDto _value;
  // ignore: unused_field
  final $Res Function(LinksDto) _then;

  @override
  $Res call({
    Object? self = freezed,
    Object? short = freezed,
  }) {
    return _then(_value.copyWith(
      self: self == freezed
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String,
      short: short == freezed
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LinksDtoCopyWith<$Res> implements $LinksDtoCopyWith<$Res> {
  factory _$LinksDtoCopyWith(_LinksDto value, $Res Function(_LinksDto) then) =
      __$LinksDtoCopyWithImpl<$Res>;
  @override
  $Res call({String self, String short});
}

/// @nodoc
class __$LinksDtoCopyWithImpl<$Res> extends _$LinksDtoCopyWithImpl<$Res>
    implements _$LinksDtoCopyWith<$Res> {
  __$LinksDtoCopyWithImpl(_LinksDto _value, $Res Function(_LinksDto) _then)
      : super(_value, (v) => _then(v as _LinksDto));

  @override
  _LinksDto get _value => super._value as _LinksDto;

  @override
  $Res call({
    Object? self = freezed,
    Object? short = freezed,
  }) {
    return _then(_LinksDto(
      self: self == freezed
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String,
      short: short == freezed
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LinksDto implements _LinksDto {
  const _$_LinksDto({required this.self, required this.short});

  factory _$_LinksDto.fromJson(Map<String, dynamic> json) =>
      _$$_LinksDtoFromJson(json);

  @override
  final String self;
  @override
  final String short;

  @override
  String toString() {
    return 'LinksDto(self: $self, short: $short)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LinksDto &&
            const DeepCollectionEquality().equals(other.self, self) &&
            const DeepCollectionEquality().equals(other.short, short));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(self),
      const DeepCollectionEquality().hash(short));

  @JsonKey(ignore: true)
  @override
  _$LinksDtoCopyWith<_LinksDto> get copyWith =>
      __$LinksDtoCopyWithImpl<_LinksDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinksDtoToJson(this);
  }
}

abstract class _LinksDto implements LinksDto {
  const factory _LinksDto({required String self, required String short}) =
      _$_LinksDto;

  factory _LinksDto.fromJson(Map<String, dynamic> json) = _$_LinksDto.fromJson;

  @override
  String get self;
  @override
  String get short;
  @override
  @JsonKey(ignore: true)
  _$LinksDtoCopyWith<_LinksDto> get copyWith =>
      throw _privateConstructorUsedError;
}
