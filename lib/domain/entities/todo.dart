// ignore_for_file: public_member_api_docs, sort_constructors_first
//  //   ///
//  IMPORT LIBRARIES
//  IMPORT FILES
//  //   ///

class Todo {
  final String id;
  final String description;
  final DateTime? completedAt;

  Todo(
      {required this.id, required this.description, required this.completedAt});

  Todo copyWith({
    String? id,
    String? description,
    DateTime? completedAt,
  }) {
    return Todo(
      id: id ?? this.id,
      description: description ?? this.description,
      completedAt: completedAt ?? this.completedAt,
    );
  }
}
