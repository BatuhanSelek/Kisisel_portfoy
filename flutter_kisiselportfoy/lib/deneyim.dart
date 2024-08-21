import 'package:flutter/material.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deneyim'),
      ),
      body: const Center(
        child: Text(
          'Deneyim bilgileri burada olacak.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
