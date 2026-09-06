class Animal {

  //atributos
  String nome;
  String especie;
  int idade;
  double peso;
  DateTime dataCadastro;

  //construtor
  Animal({

    required this.nome,
    required this.especie,
    required this.idade,
    this.peso = 0.0,
    required this.dataCadastro,

  });

  //metodo ficha
  String ficha() {

    return '$nome, $idade anos';

  }

}