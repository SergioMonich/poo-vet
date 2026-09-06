import 'dart:vmservice_io';

import 'models/animal.dart';
import 'models/animal_internado.dart';
import 'models/clinica.dart';


void main() {

  final rex = Animal(
    
    nome: 'Rex', 
    especie: 'Cachorro', 
    idade: 3, 
    dataCadastro: DateTime.now()
    
    );
  
  final mimi = AnimalInternado(

    nome: 'Mimi',
    especie: 'Gato',
    idade: 2,
    peso: 0.8,
    dataCadastro: DateTime.now(),
    baia: 'B3',
    dataInternacao: DateTime.now()

  );

  final clinica1 = Clinica(nome: 'Matriz');

  clinica1.adicionar(Animal(nome: 'Robson', especie: 'Gato', idade: 8, dataCadastro: DateTime.now()));
  clinica1.adicionar(Animal(nome: 'Lola', especie: 'Cachorro', idade: 5, dataCadastro: DateTime.now()));
  
  print(rex.ficha());
  print(mimi.ficha());
  print('${clinica1.nome} tem ${clinica1.pacientes.length} internados:');
  for (final animal in clinica1.pacientes) {

    print('- ${animal.nome}');

  }
  
}