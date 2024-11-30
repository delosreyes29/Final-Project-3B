import 'package:flutter_riverpod/flutter_riverpod.dart';

class Task {
  final String title;
  final String description;
  bool isCompleted;

  Task(
      {required this.title,
      required this.description,
      this.isCompleted = false});
}

//list of tasks
final taskListProvider = StateProvider<List<Task>>((ref) => []);

//adding new tasks
final addTaskProvider = Provider((ref) {
  return (Task task) {
    final tasks = ref.read(taskListProvider.notifier).state;
    tasks.add(task);
    ref.read(taskListProvider.notifier).state = tasks;
  };
});
