import 'package:flutter/material.dart';
import '../models/animal.dart';
import '../models/animal_internado.dart';
import '../models/clinica.dart';

class HomePage extends StatelessWidget {
  
  HomePage({super.key});

  final Clinica clinica = _criarClinicaComPacientes();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
        
        title: Text(clinica.nome),

      ),

      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          
          Padding(
            
            padding: const EdgeInsets.all(16),
            child: Text(
              
              'Total de pacientes: ${clinica.totalpacientes}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),

            ),

          ),

        ],

      ),

    );
    
  }
}

Clinica _criarClinicaComPacientes() {
  final clinica = Clinica(nome: 'Clínica Pata Feliz');

  clinica.adicionar(Animal(nome: 'Rex', especie: 'Cachorro', idade: 3, peso: 12.5, dataCadastro: DateTime.now()));
  clinica.adicionar(Animal(nome: 'Mimi', especie: 'Gato', idade: 2, peso: 4.2, dataCadastro: DateTime.now()));
  clinica.adicionar(AnimalInternado(nome: 'Robson', especie: 'Gato', idade: 8, dataCadastro: DateTime.now(), baia: 'B1', dataInternacao: DateTime.now()));
  clinica.adicionar(Animal(nome: 'Lola', especie: 'Cachorro', idade: 5, dataCadastro: DateTime.now()));
  clinica.adicionar(Animal(nome: 'Raika', especie: 'Papagaio', idade: 4, dataCadastro: DateTime.now()));
  clinica.adicionar(AnimalInternado(nome: 'Jubileu', especie: 'Hamster', idade: 1, peso: 0.4, dataCadastro: DateTime.now(), baia: 'B4', dataInternacao: DateTime.now()));

  return clinica;
}