// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shorten_link_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShortenLinkStateTearOff {
  const _$ShortenLinkStateTearOff();

  _ShortenLinkState call(
      {Iterable<ShortenedUrl> shortenedUrls = const [],
      bool isLoading = false}) {
    return _ShortenLinkState(
      shortenedUrls: shortenedUrls,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $ShortenLinkState = _$ShortenLinkStateTearOff();

/// @nodoc
mixin _$ShortenLinkState {
  Iterable<ShortenedUrl> get shortenedUrls =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShortenLinkStateCopyWith<ShortenLinkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortenLinkStateCopyWith<$Res> {
  factory $ShortenLinkStateCopyWith(
          ShortenLinkState value, $Res Function(ShortenLinkState) then) =
      _$ShortenLinkStateCopyWithImpl<$Res>;
  $Res call({Iterable<ShortenedUrl> shortenedUrls, bool isLoading});
}

/// @nodoc
class _$ShortenLinkStateCopyWithImpl<$Res>
    implements $ShortenLinkStateCopyWith<$Res> {
  _$ShortenLinkStateCopyWithImpl(this._value, this._then);

  final ShortenLinkState _value;
  // ignore: unused_field
  final $Res Function(ShortenLinkState) _then;

  @override
  $Res call({
    Object? shortenedUrls = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      shortenedUrls: shortenedUrls == freezed
          ? _value.shortenedUrls
          : shortenedUrls // ignore: cast_nullable_to_non_nullable
              as Iterable<ShortenedUrl>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ShortenLinkStateCopyWith<$Res>
    implements $ShortenLinkStateCopyWith<$Res> {
  factory _$ShortenLinkStateCopyWith(
          _ShortenLinkState value, $Res Function(_ShortenLinkState) then) =
      __$ShortenLinkStateCopyWithImpl<$Res>;
  @override
  $Res call({Iterable<ShortenedUrl> shortenedUrls, bool isLoading});
}

/// @nodoc
class __$ShortenLinkStateCopyWithImpl<$Res>
    extends _$ShortenLinkStateCopyWithImpl<$Res>
    implements _$ShortenLinkStateCopyWith<$Res> {
  __$ShortenLinkStateCopyWithImpl(
      _ShortenLinkState _value, $Res Function(_ShortenLinkState) _then)
      : super(_value, (v) => _then(v as _ShortenLinkState));

  @override
  _ShortenLinkState get _value => super._value as _ShortenLinkState;

  @override
  $Res call({
    Object? shortenedUrls = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_ShortenLinkState(
      shortenedUrls: shortenedUrls == freezed
          ? _value.shortenedUrls
          : shortenedUrls // ignore: cast_nullable_to_non_nullable
              as Iterable<ShortenedUrl>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ShortenLinkState extends _ShortenLinkState {
  const _$_ShortenLinkState(
      {this.shortenedUrls = const [], this.isLoading = false})
      : super._();

  @JsonKey()
  @override
  final Iterable<ShortenedUrl> shortenedUrls;
  @JsonKey()
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ShortenLinkState(shortenedUrls: $shortenedUrls, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShortenLinkState &&
            const DeepCollectionEquality()
                .equals(other.shortenedUrls, shortenedUrls) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(shortenedUrls),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$ShortenLinkStateCopyWith<_ShortenLinkState> get copyWith =>
      __$ShortenLinkStateCopyWithImpl<_ShortenLinkState>(this, _$identity);
}

abstract class _ShortenLinkState extends ShortenLinkState {
  const factory _ShortenLinkState(
      {Iterable<ShortenedUrl> shortenedUrls,
      bool isLoading}) = _$_ShortenLinkState;
  const _ShortenLinkState._() : super._();

  @override
  Iterable<ShortenedUrl> get shortenedUrls;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$ShortenLinkStateCopyWith<_ShortenLinkState> get copyWith =>
      throw _privateConstructorUsedError;
}
