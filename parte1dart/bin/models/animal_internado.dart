import 'animal.dart';

class AnimalInternado extends Animal{

  //atributos
  String baia;
  DateTime dataInternacao;

  //construtior
  AnimalInternado({

    required super.nome,
    required super.especie,
    required super.idade,
    super.peso,
    required super.dataCadastro,
    required this.baia,
    required this.dataInternacao,

  });

  //metodo sobrescrito
  @override
  String ficha() {

    return '${super.ficha()}, baia $baia';

  }

}