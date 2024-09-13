import 'package:dart_app_console/src/services/UserService.dart';

class UserController {
  final service = Userservice();

  Future<String> createUser (String name, String document, String password) async {
    try {
      await service.createUser(name, document, password);

      return 'Contra criada com sucesso!';
    } catch (e) {
      return '${e}';
    }
  }
}