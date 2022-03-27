import 'package:domain/domain.dart';
import 'package:infrastructure/infrastructure.dart';
import 'package:injectable/injectable.dart';

@module
abstract class InfrastructureModule {
  @LazySingleton(as: ILinkShortenerRepository)
  LinkShortenerRepository linkShortenerRepository(
          @Named('LinkShortenerDataSource')
              ILinkShortenerDataSource linkShortenerDataSource) =>
      LinkShortenerRepository(linkShortenerDataSource);
}
