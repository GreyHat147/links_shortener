// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:data_source/data_source.dart' as _i4;
import 'package:dio/dio.dart' as _i3;
import 'package:domain/domain.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:infrastructure/infrastructure.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:presentation/presentation.dart' as _i7;

import 'data_source/data_source.dart' as _i8;
import 'domain/domain.dart' as _i10;
import 'infrastructure/infrastructure.dart' as _i9;
import 'presentation/presentation.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dataSourceModule = _$DataSourceModule(get);
  final infrastructureModule = _$InfrastructureModule();
  final domainModule = _$DomainModule(get);
  final presentationDataSource = _$PresentationDataSource();
  gh.singleton<_i3.Dio>(dataSourceModule.dio);
  gh.singleton<_i4.DioMan>(dataSourceModule.dioMan);
  gh.lazySingleton<_i5.ILinkShortenerDataSource>(
      () => dataSourceModule.linkShortener,
      instanceName: 'LinkShortenerDataSource');
  gh.lazySingleton<_i6.ILinkShortenerRepository>(() => infrastructureModule
      .linkShortenerRepository(get<_i5.ILinkShortenerDataSource>(
          instanceName: 'LinkShortenerDataSource')));
  gh.lazySingleton<_i6.IShortenLink>(() => domainModule.shortenLink);
  gh.factory<_i7.ShortenLinkCubit>(
      () => presentationDataSource.shortenLinkCubit(get<_i6.IShortenLink>()));
  return get;
}

class _$DataSourceModule extends _i8.DataSourceModule {
  _$DataSourceModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i4.DioMan get dioMan => _i4.DioMan(_getIt<_i3.Dio>());
  @override
  _i4.LinkShortenerDataSource get linkShortener =>
      _i4.LinkShortenerDataSource(_getIt<_i4.DioMan>());
}

class _$InfrastructureModule extends _i9.InfrastructureModule {}

class _$DomainModule extends _i10.DomainModule {
  _$DomainModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i6.ShortenLink get shortenLink =>
      _i6.ShortenLink(_getIt<_i6.ILinkShortenerRepository>());
}

class _$PresentationDataSource extends _i11.PresentationDataSource {}
