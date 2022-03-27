import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DomainModule {
  @LazySingleton(as: IShortenLink)
  ShortenLink get shortenLink;
}
