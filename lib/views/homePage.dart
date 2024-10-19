import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: const Text('Radar'),
      ),
      body: const Center(
        child: Text('Bienvenue à la page d\'accueil!'),
      ),
    );
  }
}
