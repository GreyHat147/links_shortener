import 'package:dio/dio.dart';
import 'package:infrastructure/infrastructure.dart';
import 'package:injectable/injectable.dart';
import 'package:data_source/data_source.dart';

@module
abstract class DataSourceModule {
  @Named('LinkShortenerDataSource')
  @LazySingleton(as: ILinkShortenerDataSource)
  LinkShortenerDataSource get linkShortener;

  @singleton
  DioMan get dioMan;

  @singleton
  Dio get dio => Dio();
}
