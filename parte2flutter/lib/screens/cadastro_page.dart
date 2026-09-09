import 'package:flutter/material.dart';
import '../models/animal.dart';

class CadastroPage extends StatefulWidget {
  
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  
  final _nomeController = TextEditingController();
  final _especieController = TextEditingController();
  final _idadeController = TextEditingController();

  @override
  void dispose() {
    
    _nomeController.dispose();
    _especieController.dispose();
    _idadeController.dispose();
    super.dispose();

  }

  void _confirmar() {
    
    final idade = int.tryParse(_idadeController.text) ?? 0;

    final novoAnimal = Animal(
      nome: _nomeController.text,
      especie: _especieController.text,
      idade: idade,
      dataCadastro: DateTime.now(),

    );

    Navigator.of(context).pop(novoAnimal);

  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
        
        title: const Text('Cadastrar novo animal'),

      ),

      body: Padding(
       
        padding: const EdgeInsets.all(16),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            
            TextFormField(
              
              controller: _nomeController,
              decoration: const InputDecoration(
                
                labelText: 'Nome',
                prefixIcon: Icon(Icons.pets),
                border: OutlineInputBorder(),

              ),

            ),

            const SizedBox(height: 12),
            TextFormField(
              
              controller: _especieController,
              decoration: const InputDecoration(
                
                labelText: 'Espécie',
                prefixIcon: Icon(Icons.category),
                border: OutlineInputBorder(),

              ),

            ),

            const SizedBox(height: 12),
            TextFormField(
              
              controller: _idadeController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                
                labelText: 'Idade',
                prefixIcon: Icon(Icons.cake),
                border: OutlineInputBorder(),

              ),

            ),

            const SizedBox(height: 24),
            ElevatedButton(
              
              onPressed: _confirmar,
              child: const Text('Confirmar'),

            ),

          ],

        ),

      ),

    );

  }

}