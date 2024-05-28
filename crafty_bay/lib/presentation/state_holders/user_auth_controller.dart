import 'package:shared_preferences/shared_preferences.dart';

class UserAuthController {
  static String accessToken = '';

  static const String _tokenKey = 'token';

  static Future<void> saveUserToken(String token) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(_tokenKey, token);
    accessToken = token;
  }

  static Future<String> getUserToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString(_tokenKey);
    accessToken = token ?? '';
    return accessToken;
  }

  static Future<bool> checkLoggedInState() async {
    String token = await getUserToken();
    return token.isNotEmpty;
  }

  static Future<void> clearUserData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.clear();
    accessToken = '';
  }
}
