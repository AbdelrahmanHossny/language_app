import 'package:flutter/material.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Phrases')),
      body: const Center(child: Text('This is the Phrases Page')),
    );
  }
}
