import 'package:auth_app/core/network/dio_client.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setuoServiceLocator() {
  sl.registerSingleton<DioClient>(DioClient());
}
