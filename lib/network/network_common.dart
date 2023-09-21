import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:thuprai_stacked_architecture/utils/enpoints.dart';
import 'package:thuprai_stacked_architecture/network/network_interceptor.dart';

class NetworkCommon {
  NetworkCommon._();
  static final NetworkCommon _instance = NetworkCommon._();
  factory NetworkCommon() {
    return _instance;
  }
  static Dio dio = Dio(BaseOptions(
    baseUrl: Endpoints.baseURl,
    connectTimeout: const Duration(milliseconds: 5000),
    receiveTimeout: const Duration(milliseconds: 5000),
  ))
    ..interceptors.add(NetworkInterceptor())
    ..interceptors.add(PrettyDioLogger(
      request: true,
      responseBody: true,
      requestBody: true,
      responseHeader: true,
    ));
}
