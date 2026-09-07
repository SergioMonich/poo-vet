import 'models/animal.dart';
import 'models/animal_internado.dart';
import 'models/clinica.dart';


void main() {

  //instanciando um objeto
  final rex = Animal(
    
    nome: 'Rex', 
    especie: 'Cachorro', 
    idade: 3, 
    dataCadastro: DateTime.now()
    
  );
  
  //instanciando um objeto com heranca
  final mimi = AnimalInternado(

    nome: 'Mimi',
    especie: 'Gato',
    idade: 2,
    peso: 0.8,
    dataCadastro: DateTime.now(),
    baia: 'B3',
    dataInternacao: DateTime.now()

  );

  //instanciando uma nova clinica
  final clinica1 = Clinica(nome: 'Matriz');

  //instanciando objeto animal diretamente dentro da classe clinica (com um metodo para internar - animalinternado)
  clinica1.adicionar(Animal(nome: 'Robson', especie: 'Gato', idade: 8, dataCadastro: DateTime.now()));
  clinica1.adicionar(Animal(nome: 'Lola', especie: 'Cachorro', idade: 5, dataCadastro: DateTime.now()));
  clinica1.adicionar(Animal(nome: 'Lili', especie: 'peixe', idade: 1, dataCadastro: DateTime.now()));

  //bloco 1  - entidade principal
  print('====BLOCCO 01 - ENTIDADE PRINCIPAL====');
  print('Animal -- Nome: ${rex.nome} -- Especie: ${rex.especie} -- Idade: ${rex.idade} -- Peso: ${rex.peso}');
  print('');

  //bloco 2 - herança
  print('====BLOCCO 02 - HERANÇA====');
  print('Animal comum -> ${rex.ficha()}');
  print('Animal internado -> ${mimi.ficha()}');
  print('');

  //bloco 3 - composicao
  print('====BLOCCO 03 - COMPOSIÇAO====');
  print('${clinica1.nome} tem ${clinica1.totalpacientes} animais internados:');
  for (final animal in clinica1.paciente) {

    print('- ${animal.nome}');

  }
  print('');

  //bloco 4 - encapsulamento
  print('===== [4] ENCAPSULAMENTO =====');
  print('Clínica "${clinica1.nome}" -> total de pacientes (calculado): ${clinica1.totalpacientes}');
  final jubileu = AnimalInternado(
    nome: 'Jubileu',
    especie: 'Hamster',
    idade: 1,
    peso: 0.4,
    dataCadastro: DateTime.now(),
    baia: 'B4',
    dataInternacao: DateTime.now(),
  );
  clinica1.adicionar(jubileu);
  print('Após adicionar "${jubileu.nome}": ${clinica1.totalpacientes}');
  for (final animal in clinica1.paciente) {

    print('- ${animal.nome}');

  }
  print('');
  
}

