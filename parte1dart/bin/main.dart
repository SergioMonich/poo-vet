import 'models/animal.dart';

void main() {
  final rex = Animal(nome: 'Rex', especie: 'Cachorro', idade: 3, dataCadastro: DateTime.now());
  print(rex.nome);
  print(rex.idade);
}