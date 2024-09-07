import 'package:dartz/dartz.dart';

abstract class AuthApiServices {
  Future<Either> signup();
}

class AuthApiServicesImpl implements AuthApiServices {
  @override
  Future<Either> signup() {
    throw UnimplementedError();
  }
}
