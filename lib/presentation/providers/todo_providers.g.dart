// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$filteredTodosHash() => r'e2226ab443e0d598e910ae2ae0c15cd30404068b';

/// See also [filteredTodos].
@ProviderFor(filteredTodos)
final filteredTodosProvider = AutoDisposeProvider<List<Todo>>.internal(
  filteredTodos,
  name: r'filteredTodosProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$filteredTodosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FilteredTodosRef = AutoDisposeProviderRef<List<Todo>>;
String _$todoFilterHash() => r'35d98aac51d5a4d66e4d743b4bfa5e2ef009eff1';

/// See also [TodoFilter].
@ProviderFor(TodoFilter)
final todoFilterProvider = NotifierProvider<TodoFilter, FilterType>.internal(
  TodoFilter.new,
  name: r'todoFilterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$todoFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TodoFilter = Notifier<FilterType>;
String _$todosHash() => r'b8e2e80f3e964129fd72775b1745ed0e56e2830e';

/// See also [Todos].
@ProviderFor(Todos)
final todosProvider = NotifierProvider<Todos, List<Todo>>.internal(
  Todos.new,
  name: r'todosProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$todosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Todos = Notifier<List<Todo>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
