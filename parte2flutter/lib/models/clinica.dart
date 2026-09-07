import 'animal.dart';

class Clinica {

  //atreibutos. Lista com atributo privado ("_")
  String nome;
  List<Animal> _pacientes = [];

  //construtor
  Clinica({

    required this.nome

  });

  void adicionar(Animal animal){

    _pacientes.add(animal);

  }

  //getter com arrow function usado para encurtar o codigo. Poderia ser { retrurn _pacientes;}
  List<Animal> get paciente => _pacientes;
  
  //gertter calculado, atualziado a cda nova adicao de um elemento na lista
  int get totalpacientes => _pacientes.length;

}