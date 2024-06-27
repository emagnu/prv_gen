//  //   ///
//  IMPORT LIBRARIES
import 'package:flutter/material.dart';
//  IMPORT FILES
import 'config/router/app_router.dart';
import 'config/theme/app_theme.dart';
//  //   ///

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Todos los Providers de Riverpod con Generation',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(isDarkmode: false).getTheme(),
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