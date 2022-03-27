class ShortenedUrl {
  ShortenedUrl(
    this.url,
  );

  final String url;

  @override
  String toString() => 'ShortenedUrl(url: $url)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ShortenedUrl && other.url == url;
  }

  @override
  int get hashCode => url.hashCode;
}
