import 'package:fitness/modules/tasks_screens/add_tasks.dart';
import 'package:flutter/material.dart';

class TaskWidget extends StatefulWidget {
  final String taskTitle;
  final String taskId;
  final String ?uploadedBy;
  final bool isDone;

    const TaskWidget(
      {Key? key, required this.taskTitle,
        required this.taskId,
        required this.uploadedBy,
        required this.isDone}) : super(key: key);
  @override
  _TaskWidgetState createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddTasks(),
            ),
          );
        },
        onLongPress: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  actions: [
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Delete',
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            )
                          ],
                        ))
                  ],
                );
              });
        },
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        leading: Container(
          padding: const EdgeInsets.only(right: 12.0),
          decoration: const BoxDecoration(
            border: Border(
              right: BorderSide(width: 1.0,color: Colors.black),
            ),
          ),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius:
            20, // https://image.flaticon.com/icons/png/128/850/850960.png
            child: Image.asset(widget.isDone
                ? 'assets/images/by.jpg'
                : 'assets/images/by.jpg',scale:10,),
          ),
        ),
        title: Text(
          widget.taskTitle,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),
        ),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Icon(
              Icons.linear_scale,
              color: Colors.blue,
            ),

          ],
        ),
        trailing: const Icon(
          Icons.keyboard_arrow_right,
          size: 30,
          color: Colors.blue,
        ),
      ),
    );
  }
}
