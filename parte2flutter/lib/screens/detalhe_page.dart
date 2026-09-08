import 'package:flutter/material.dart';
import '../models/animal.dart';
import '../models/animal_internado.dart';

class DetalhePage extends StatelessWidget {
  
  final Animal animal;

  const DetalhePage({
    
    super.key, 
    required this.animal
  
  });

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
        
        title: Text(animal.nome),

      ),
      
      body: Padding(
        
        padding: const EdgeInsets.all(16),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Text('Espécie: ${animal.especie}', style: const TextStyle(fontSize: 16)),
            Text('Idade: ${animal.idade} anos', style: const TextStyle(fontSize: 16)),
            Text('Peso: ${animal.peso} kg', style: const TextStyle(fontSize: 16)),
            Text('Cadastrado em: ${animal.dataCadastro}', style: const TextStyle(fontSize: 16)),
            
            if (animal is AnimalInternado)
              Text(
                
                'Internado na baia: ${(animal as AnimalInternado).baia}',
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),

              ),

          ],

        ),

      ),

    );

  }

}