// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$counterHash() => r'f7aa7a523f201b035ecc1cdb309ffa2624879ca7';

/// See also [Counter].
@ProviderFor(Counter)
final counterProvider = NotifierProvider<Counter, int>.internal(
  Counter.new,
  name: r'counterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$counterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Counter = Notifier<int>;
String _$toggleThemeHash() => r'f7d3f0d3d89018c785d53ae47eb7361957c9ab75';

/// See also [ToggleTheme].
@ProviderFor(ToggleTheme)
final toggleThemeProvider =
    AutoDisposeNotifierProvider<ToggleTheme, bool>.internal(
  ToggleTheme.new,
  name: r'toggleThemeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$toggleThemeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ToggleTheme = AutoDisposeNotifier<bool>;
String _$userNameHash() => r'ba93950753cb967e239df47fe1d1e6903a20d88c';

/// See also [UserName].
@ProviderFor(UserName)
final userNameProvider = NotifierProvider<UserName, String>.internal(
  UserName.new,
  name: r'userNameProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userNameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserName = Notifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
