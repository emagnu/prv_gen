//  //   ///
//  IMPORT LIBRARIES
import 'package:uuid/uuid.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
//  IMPORT FILES
import '../../config/helpers/random_generator.dart';
import '../../domain/entities/todo.dart';
//  PARTS
part 'todo_providers.g.dart';
//  //   ///

const uuid = Uuid();

//  ENUM
enum FilterType { all, completed, pending }

//  PROVIDER = todoFilterProvider
// @riverpod
@Riverpod(keepAlive: true)
class TodoFilter extends _$TodoFilter {
  @override
  FilterType build() {
    return FilterType.all;
  }

  void setFilter(FilterType newFilter) {
    state = newFilter;
  }
}

//  PROVIDER = todosProvider
// @riverpod
@Riverpod(keepAlive: true)
class Todos extends _$Todos {
  @override
  List<Todo> build() {
    return [
      Todo(
          id: uuid.v4(),
          description: RandomGenerator.getRandomName(),
          completedAt: null),
      Todo(
          id: uuid.v4(),
          description: RandomGenerator.getRandomName(),
          completedAt: DateTime.now()),
      Todo(
          id: uuid.v4(),
          description: RandomGenerator.getRandomName(),
          completedAt: null),
      Todo(
          id: uuid.v4(),
          description: RandomGenerator.getRandomName(),
          completedAt: DateTime.now()),
      Todo(
          id: uuid.v4(),
          description: RandomGenerator.getRandomName(),
          completedAt: null),
    ];
  }

  void toggleTodo(String id) {
    state = state.map((element) {
      if (element.id == id) {
        element =
            element.copyWith(completedAt: element.done ? null : DateTime.now());
      }
      return element;
    }).toList();
  }

  void deleteTodo(Todo todo) {}

  void updateTodo(Todo todo) {}

  void createTodo(String description) {
    state = [
      ...state,
      Todo(id: uuid.v4(), description: description, completedAt: null)
    ];
  }
}

//  PROVIDER = filteredTodoProvider

@riverpod
List<Todo> filteredTodos(FilteredTodosRef ref) {
  final FilterType currentFilter = ref.watch(todoFilterProvider);
  final List<Todo> todos = ref.watch(todosProvider);

  switch (currentFilter) {
    case FilterType.all:
      return todos;
    case FilterType.completed:
      return todos.where((todo) => todo.done).toList();
    case FilterType.pending:
      return todos.where((todo) => !todo.done).toList();
  }
}
