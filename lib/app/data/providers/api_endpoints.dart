import 'package:hackathon4/app/data/constants.dart';

abstract class ApiEndpoints {
  static const refreshTokens = 'auth/changeAccess';
  static const signIn = '${Constants.BASE_URL}auth/signin';
  static const signUp = '${Constants.BASE_URL}auth/signup';
  static const getAllBooks = 'book/all';
}
