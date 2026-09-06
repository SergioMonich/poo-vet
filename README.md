# Trabalho de POO — Dart e Flutter

## Domínio
Clínica veterinária: `Animal` é o paciente individual (nome, espécie, idade,
peso, data de cadastro) e `Clinica` é a classe agrupadora, que mantém a
lista de animais cadastrados.

## Composição vs Herança
A relação entre `Clinica` e `Animal` é composição, não herança, porque uma
clínica não é um animal: ela contém vários animais em uma lista
(`List<Animal> pacientes`). Já `AnimalInternado` é um `Animal` (herda dele),
porque todo animal internado também é um animal, só que com dados extras.

## Integrantes
- Sergio Felipe Santos Monich

## Tabela de rastreio

| #  | Exercício          | Arquivo e linha                               | O que aparece na tela                                                   |
|----|--------------------|-----------------------------------------------|-------------------------------------------------------------------------|
| 01 | Entidade principal | parte1dart/bin/models/animal.dart:1           | Nome do animal impresso no bloco [1] do relatório                       |
| 02 | Herança            | parte1dart/bin/models/animalInternado.dart:24 | Ficha do Animal e do AnimalInternado, uma abaixo da outra, bloco [2]    |
| 03 | Composição         | parte1dart/bin/models/clinica.dart:16         | Total de pacientes e lista de nomes impressos no bloco [3] do relatório |
| 04 | Encapsulamento     |                                               |                                                                         |
| 05 | Estrutura de tela  |                                               |                                                                         |
| 06 | Cartão             |                                               |                                                                         |
| 07 | Lista              |                                               |                                                                         |
| 08 | Navegação          |                                               |                                                                         |
| 09 | Formulário         |                                               |                                                                         |
| 10 | Estado             |                                               |                                                                         |