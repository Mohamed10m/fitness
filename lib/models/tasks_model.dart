class TasksData {
  late String taskTitle;
  late String taskCategory;
  late String taskDate;
  TasksData({required this.taskTitle, required this.taskCategory, required this.taskDate});

  TasksData.fromJson(Map<String, dynamic> json) {
    taskTitle = json['taskTitle'];
    taskCategory = json['taskCategory'];
    taskDate = json['taskDate'];
  }
  Map<String, dynamic> toMap() {
    return {
      'taskTitle': taskTitle,
      'taskCategory': taskCategory,
      'taskDate': taskDate,
    };
  }
}
