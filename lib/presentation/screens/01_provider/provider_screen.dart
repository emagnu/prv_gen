//  //   ///
//  IMPORT LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  IMPORT FILES
import '../../providers/providers.dart';
// import '../../providers/hello_world_provider.dart';
//  //   ///

class ProviderScreen extends ConsumerWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String name = ref.watch(helloWorldProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider de solo lectura'),
      ),
      body: Center(
        // child: Text('Bela Comoelsol'),
        child: Text(
          name,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
