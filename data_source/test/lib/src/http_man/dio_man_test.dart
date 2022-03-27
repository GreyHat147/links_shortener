import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:data_source/src/http_man/dio_man.dart';

import 'dio_man_test.mocks.dart';

@GenerateMocks(<Type>[Dio])
void main() {
  group("DioMan", () {
    group("post", () {
      test("should verify the data", () async {
        //Arrange
        final url = "https://www.youtube.com";
        String path = "MY_URL";
        final Map<String, dynamic> body = {
          "key": "value",
        };

        final MockDio mockDio = MockDio();
        final DioMan dioMan = DioMan(mockDio);

        when(mockDio.post(path, data: body)).thenAnswer(
          (_) => Future.value(
            Response(
              data: body,
              requestOptions: RequestOptions(path: path),
            ),
          ),
        );

        //Act
        await dioMan.post(path, body);

        //Assert
        verify(
          mockDio.post(path, data: body),
        );
      });
      test(
          "should return the expected response if backend service works properly",
          () async {
        //Arrange
        final url = "https://www.youtube.com";
        String path = "MY_URL";
        final Map<String, dynamic> body = {
          "key": "value",
        };

        final MockDio mockDio = MockDio();
        final DioMan dioMan = DioMan(mockDio);

        when(mockDio.post(path, data: body)).thenAnswer(
          (_) => Future.value(
            Response(
              data: body,
              requestOptions: RequestOptions(path: path),
            ),
          ),
        );

        //Act
        final Map<String, dynamic> response = await dioMan.post(path, body);

        //Assert
        expect(response, body);
      });
    });
  });
}
