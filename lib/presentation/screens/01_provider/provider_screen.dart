//  //   ///
//  IMPORT LIBRARIES
import 'package:flutter/material.dart';
//  IMPORT FILES
import '../../providers/hello_world_provider.dart';
//  //   ///

class ProviderScreen extends StatelessWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String name = ref.watch(helloWorldProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider de solo lectura'),
      ),
      body: const Center(
        // child: Text('Bela Comoelsol'),
        child: Text('Bela Comoelsol'),
      ),
    );
  }
}
