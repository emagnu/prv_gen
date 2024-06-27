//  //   ///
//  IMPORT LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
//  IMPORT FILES
import 'config/router/app_router.dart';
import 'config/theme/app_theme.dart';
import 'presentation/providers/providers.dart';
//  //   ///

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GoRouter appRouter = ref.watch(appRouterProvider);
    final bool isDarkmode = ref.watch(toggleThemeProvider);

    return MaterialApp.router(
      title: 'Todos los Providers de Riverpod con Generation',
      debugShowCheckedModeBanner: false,
      // theme: AppTheme(isDarkmode: false).getTheme(),
      theme: AppTheme(isDarkmode: isDarkmode).getTheme(),
      routerConfig: appRouter,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      //   useMaterial3: true,
      // ),
      // home: const HomePage(),
    );
  }
}


//  //   ///
//  IMPORT LIBRARIES
//  IMPORT FILES
//  //   ///