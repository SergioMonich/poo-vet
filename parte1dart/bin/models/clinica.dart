import 'animal.dart';

class Clinica {

  //atreibutos
  String nome;
  List<Animal> pacientes = [];

  //construtor
  Clinica({

    required this.nome

  });

  void adicionar(Animal animal){

    pacientes.add(animal);

  }

}