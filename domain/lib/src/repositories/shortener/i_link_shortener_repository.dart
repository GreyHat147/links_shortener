import 'package:domain/src/entities/entities.dart';

abstract class ILinkShortenerRepository {
  Future<ShortenedUrl> shortenUrl(String url);
}
