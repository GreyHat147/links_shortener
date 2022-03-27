part of 'shorten_link_cubit.dart';

/// State with all data for Shorten Link View
@freezed
class ShortenLinkState with _$ShortenLinkState {
  const ShortenLinkState._();

  const factory ShortenLinkState({
    @Default([]) Iterable<ShortenedUrl> shortenedUrls,
    @Default(false) bool isLoading,
  }) = _ShortenLinkState;
}
