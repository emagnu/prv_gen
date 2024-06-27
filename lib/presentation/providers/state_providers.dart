//  //   ///
//  IMPORT LIBRARIES
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
//  IMPORT FILES
//  PARTS
part 'state_providers.g.dart';
//  //   ///

//  PROVIDER = counterProvider
// @riverpod
@Riverpod(keepAlive: true)
class Counter extends _$Counter {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}

//  PROVIDER = toggleThemeProvider
@riverpod
class ToggleTheme extends _$ToggleTheme {
  @override
  bool build() {
    return false;
  }

  void toggleTheme() {
    state = !state;
  }
}

//  PROVIDER = userNameProvider
// @riverpod
@Riverpod(keepAlive: true)
class UserName extends _$UserName {
  @override
  String build() {
    return 'Bela Comoelsole';
  }

  void updateName(String name) {
    debugPrint('inside updateName');
    state = name;
  }
}
