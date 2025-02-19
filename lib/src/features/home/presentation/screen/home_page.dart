import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accueil'),
        centerTitle: true,
      ),
      body: FadeInUp(
        duration: const Duration(milliseconds: 500),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Bienvenue sur la page d\'accueil',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
   
                },
                child: const Text('Commencer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
