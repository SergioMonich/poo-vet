import 'package:flutter/material.dart';
import '../models/animal.dart';
import '../models/animal_internado.dart';
import '../models/clinica.dart';
import 'widgets/cartao_animal.dart';
import 'cadastro_page.dart';

class HomePage extends StatefulWidget {
  
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final Clinica clinica = _criarClinicaComPacientes();

  void _abrirCadastro() async {
    
    final novoAnimal = await Navigator.of(context).push<Animal>(
      
      MaterialPageRoute(
        
        builder: (context) => const CadastroPage(),

      ),

    );

    if (novoAnimal != null) {
      
      setState(() {
      
        clinica.adicionar(novoAnimal);

      });

    }

  }

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
      
              'Total de pacientes: ${clinica.totalPacientes}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),

            ),

          ),

          Expanded(
            
            child: ListView.builder(
            
              itemCount: clinica.totalPacientes,
              itemBuilder: (context, index) {
            
                final animal = clinica.pacientes[index];
                return CartaoAnimal(animal: animal);

              },

            ),

          ),

        ],

      ),

      floatingActionButton: FloatingActionButton(
      
        onPressed: _abrirCadastro,
        child: const Icon(Icons.add),

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