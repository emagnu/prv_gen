//  //   ///
//  IMPORT LIBRARIES
import 'package:flutter/material.dart';
//  IMPORT FILES
//  //   ///

class ProviderScreen extends StatelessWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider de solo lectura'),
      ),
      body: const Center(
        child: Text('Bela Comoelsol'),
      ),
    );
  }
}
