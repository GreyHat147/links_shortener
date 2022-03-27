/// Base interface that defines http verbs

abstract class IHttpMan<T> {
  Future<T> post(String url, Map<String, dynamic> body);
}
