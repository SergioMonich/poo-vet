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
  print('${clinica1.nome} tem ${clinica1.totalpacientes} internados:');
  for (final animal in clinica1.paciente) {

    print('- ${animal.nome}');

  }
  print('Total de pacientes: ${clinica1.totalpacientes}');

  final raika = AnimalInternado(
    
    nome: 'Raika', 
    especie: 'papagaio', 
    idade: 4, 
    dataCadastro: DateTime.now(), 
    baia: 'B7', dataInternacao: 
    DateTime.now()
  
  );

  print(raika.ficha());

  clinica1.adicionar(Animal(nome: 'Lili', especie: 'peixe', idade: 1, dataCadastro: DateTime.now()));

  print('${clinica1.nome} tem ${clinica1.totalpacientes} internados:');
  for (final animal in clinica1.paciente) {

    print('- ${animal.nome}');

  }
  print('Total de pacientes: ${clinica1.totalpacientes}');

  final jubileu = AnimalInternado(

    nome: 'jubileu',
    especie: 'hamister',
    idade: 3,
    peso: 0.4,
    dataCadastro: DateTime.now(),
    baia: 'B4',
    dataInternacao: DateTime.now()

  );

  clinica1.adicionar(jubileu);

  print('${clinica1.nome} tem ${clinica1.totalpacientes} internados:');
  for (final animal in clinica1.paciente) {

    print('- ${animal.nome}');

  }
  print('Total de pacientes: ${clinica1.totalpacientes}');
  
}

