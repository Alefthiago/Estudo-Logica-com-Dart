import 'package:dart_app_console/src/models/UserModel.dart';
import 'package:dart_app_console/src/DAO/UserDao.dart';

class Userservice {
  final UserDao dao = UserDao();

  Future<void> createUser(String name, String document, String password) async {
    
  }
}