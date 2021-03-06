import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

import 'package:presentation/presentation.dart';

@module
abstract class PresentationDataSource {
  ShortenLinkCubit shortenLinkCubit(IShortenLink shortenLink) =>
      ShortenLinkCubit(shortenLink);
}
