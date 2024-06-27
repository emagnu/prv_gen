//  //   ///
//  IMPORT LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prv_gen/config/helpers/random_generator.dart';
//  IMPORT FILES
import '../../providers/providers.dart';

//  //   ///

class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int counter = ref.watch(counterProvider);
    final bool toggleTheme = ref.watch(toggleThemeProvider);
    final String name = ref.watch(userNameProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('State Provider'),
      ),
      body: Center(
          child: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          IconButton(
            // icon: const Icon( Icons.light_mode_outlined, size: 100 ),
            icon: toggleTheme
                ? const Icon(Icons.dark_mode_outlined, size: 100)
                : const Icon(Icons.light_mode_outlined, size: 100),
            onPressed: () {
              ref.read(toggleThemeProvider.notifier).toggleTheme();
            },
          ),
          Text(name, style: const TextStyle(fontSize: 25)),
          // const Text('Bela Comoelsol', style: TextStyle(fontSize: 25)),
          // TextButton.icon(
          //   icon: const Icon(
          //     Icons.add,
          //     size: 50,
          //   ),
          //   label: const Text('0', style: TextStyle(fontSize: 100)),
          //   onPressed: () {},
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      ref.read(counterProvider.notifier).increment();
                    },
                    icon: const Icon(Icons.add, size: 35),
                  ),
                  IconButton(
                    onPressed: () {
                      ref.read(counterProvider.notifier).decrement();
                    },
                    icon: const Icon(Icons.remove, size: 35),
                  ),
                ],
              ),
              Text('$counter', // '0',
                  style: const TextStyle(
                      fontSize: 95,
                      color: Colors.green,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          const Spacer(flex: 2),
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Nombre aleatorio'),
        icon: const Icon(Icons.refresh_rounded),
        onPressed: () {
          debugPrint('Nombre aleatorio - pressed');
          ref
              .read(userNameProvider.notifier)
              .updateName(RandomGenerator.getRandomName());
        },
      ),
    );
  }
}
