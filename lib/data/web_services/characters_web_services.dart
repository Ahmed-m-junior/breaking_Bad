import 'package:breaking_bad/constants/strings.dart';
import 'package:dio/dio.dart';

class CharactersWebServices {
   late Dio dio;

  CharactersWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
       connectTimeout: const Duration(seconds: 30),
       receiveTimeout: const Duration(seconds: 30),
      receiveDataWhenStatusError: true,
    );
    dio = Dio(options);
  }
  Future<dynamic> getAllCharacters() async {
    try {
      Response response = await dio.get('/character');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
