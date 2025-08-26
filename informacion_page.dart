import 'package:flutter/material.dart';

class InformacionPage extends StatelessWidget {
  const InformacionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Información'),
      ),
      body: const Center(
        child: Text('Esta es la página de Información.'),
      ),
    );
  }
}
