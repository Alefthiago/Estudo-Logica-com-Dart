import 'dart:io';

void criarArquivo() async {
  final arquivo = File('lib/public/teste.txt');

  await arquivo.writeAsString('Olá, Dart!'); 
}
