import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'api_config.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConfig.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  // @POST(ConstantApis.login)
  // Future<LoginModel> login(@Body() LoginRequestBody loginRequestBody);
}
