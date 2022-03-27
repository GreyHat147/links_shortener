import 'package:domain/domain.dart';
import 'package:infrastructure/infrastructure.dart';

class LinkShortenerRepository implements ILinkShortenerRepository {
  LinkShortenerRepository(this._shortenerDataSource);
  final ILinkShortenerDataSource _shortenerDataSource;

  @override
  Future<ShortenedUrl> shortenUrl(String url) async {
    final ResponseShortenUrlDto responseShortenUrlDto =
        await _shortenerDataSource.shortenUrl(url);
    return responseShortenUrlDto.toEntity();
  }
}
