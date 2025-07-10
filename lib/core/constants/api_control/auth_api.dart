import 'global_api.dart';

class AuthAPIController {
 static String _base_api = "$api/users";
  static String allUsers = "${_base_api}/all";
  static String singleUser(String id) => "${_base_api}/$id";
  static String userLogin = "${_base_api}/login";
  static String userSignUp = "${_base_api}/signup";
}
