class ShortenedUrl {
  ShortenedUrl({
    required this.url,
    required this.initialUrl,
    required this.alias,
  });

  final String url;

  final String initialUrl;

  final String alias;

  @override
  String toString() =>
      'ShortenedUrl(url: $url, initialUrl: $initialUrl, alias: $alias)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ShortenedUrl &&
        other.url == url &&
        other.initialUrl == initialUrl &&
        other.alias == alias;
  }

  @override
  int get hashCode => url.hashCode ^ initialUrl.hashCode ^ alias.hashCode;
}
