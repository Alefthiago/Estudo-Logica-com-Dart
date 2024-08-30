import 'package:dart_app_console/src/services/dart_app_console.dart'
    as dart_app_console;
import 'package:dart_app_console/src/services/class/User.dart';
import 'dart:io';
import 'dart:convert';

Future<String> readLineFromStream(Stream<String> stream) async {
  return await stream.firstWhere((line) => line.isNotEmpty);
}

void runApp() async {
  Map<String, String> dataUser = {
    'name': '',
    'document': '',
    'password': '',
  };

  try {
    stdout.write('Digite o seu nome: ');
    dataUser['name'] = stdin.readLineSync() ?? '';

    while (dataUser['name']!.trim().isEmpty) {
      stdout.write('Nome obrigatorio:');
      dataUser['name'] = stdin.readLineSync() ?? '';
    }

    stdout.write('Digite o seu CNPJ/CPF: ');
    dataUser['document'] = stdin.readLineSync() ?? '';

    while (dataUser['document']!.trim().isEmpty) {
      stdout.write('CNPJ/CPF obrigatorio:');
      dataUser['document'] = stdin.readLineSync() ?? '';
    }

    stdout.write('Digite sua senha: ');
    dataUser['password'] = stdin.readLineSync() ?? '';

    while (dataUser['password']!.trim().isEmpty) {
      stdout.write('Senha obrigatorio:');
      dataUser['password'] = stdin.readLineSync() ?? '';
    }

    User user =
        User(dataUser['name']!, dataUser['document']!, dataUser['password']!);

    print(user);
  } catch (event) {
    print('Error ${event}');
  }
}
