import 'package:dio/dio.dart';
import 'package:data_source/src/http_man/http_man.dart';

class DioMan implements IHttpMan {
  DioMan(this._dio);
  final Dio _dio;

  @override
  Future<Map<String, dynamic>> post(String url, Map<String, dynamic> body) =>
      _dio.post(url, data: body).then(_handleResponse);

  Map<String, dynamic> _handleResponse(Response response) => response.data;
}
