import 'models/animal.dart';
import 'models/animalInternado.dart';

void main() {

  final rex = Animal(
    
    nome: 'Rex', 
    especie: 'Cachorro', 
    idade: 3, 
    dataCadastro: DateTime.now()
    
    );
  
  final Mimi = AnimalInternado(

    nome: 'Mimi',
    especie: 'Gato',
    idade: 2,
    peso: 0.8,
    dataCadastro: DateTime.now(),
    baia: 'B3',
    dataInternacao: DateTime.now()

  );
  
  print(rex.ficha());
  print(Mimi.ficha());
  
}