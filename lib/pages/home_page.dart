import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hola Bear'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.home))],
      ),
      body: const Center(
        child: Text('HAO COMO HAS ESTAO'),
      ),
    );
  }
}
