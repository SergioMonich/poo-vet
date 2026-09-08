import 'package:flutter/material.dart';
import '../../models/animal.dart';
import '../detalhe_page.dart';

class CartaoAnimal extends StatelessWidget {
  
  final Animal animal;

  const CartaoAnimal({super.key, required this.animal});

  @override
  Widget build(BuildContext context) {
    
    return InkWell(
    
      onTap: () {
    
        Navigator.of(context).push(
    
          MaterialPageRoute(
    
            builder: (context) => DetalhePage(animal: animal),

          ),

        );

      },

      child: Container(
        
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
        
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
        
            BoxShadow(
        
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 6,
              offset: const Offset(0, 3),

            ),

          ],

        ),

        child: Column(
         
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         
            Text(animal.nome, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Text('${animal.especie} • ${animal.idade} anos'),

          ],

        ),

      ),

    );

  }
  
}