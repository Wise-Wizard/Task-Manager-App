class Task {
  String taskName = '';
  bool isCompleted = false;
  Task({required this.taskName, this.isCompleted = false});
  dynamic completedTask() {
    isCompleted = !isCompleted;
  }
}
