import 'package:domain/domain.dart';

import '../core/core.dart';

abstract class IShortenLink extends FutureQueryUseCase<String, ShortenedUrl> {}

class ShortenLink implements IShortenLink {
  ShortenLink(this._repository);

  final ILinkShortenerRepository _repository;

  @override
  Future<ShortenedUrl> call(String url) => _repository.shortenUrl(url);
}
