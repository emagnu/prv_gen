//  //   ///
//  IMPORT LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:go_router/go_router.dart';
import 'package:prv_gen/config/router/app_router.dart';
//  IMPORT FILES
//  //   ///

class RouterScreen extends ConsumerWidget {
  const RouterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider y Go Router'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          // context.pop();  //GoRouter.of(context).pop();
          ref.read(appRouterProvider).pop();
        },
      ),
    );
  }
}
