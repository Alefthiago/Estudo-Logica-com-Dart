import 'package:dart_app_console/src/services/UserService.dart';

class UserController {
  final service = Userservice();

  Future<void> createUser (String name, String document, String password) async {
    try {
      await service.createUser(name, document, password);
    } catch (e) {

    }
  }
}