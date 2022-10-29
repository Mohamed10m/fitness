import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitness/modules/tasks_screens/task_widget.dart';
import 'package:flutter/material.dart';

class TasksView extends StatefulWidget {
  const TasksView({Key? key}) : super(key: key);

  @override
  _TasksViewState createState() => _TasksViewState();
}

class _TasksViewState extends State<TasksView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('tasks').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.data!.docs.isNotEmpty) {
              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (BuildContext context, int index) {
                    return TaskWidget(
                      uploadedBy: snapshot.data!.docs[index]['uploadedBy'],
                      isDone: snapshot.data!.docs[index]['isDone'],
                      taskId: snapshot.data!.docs[index]['taskId'],
                      taskTitle: snapshot.data!.docs[index]['taskTitle'],
                    );
                  });
            } else {
              return const Center(
                child: Text('No tasks has been uploaded'),
              );
            }
          }
          return const Center(
            child: Text('Something went wrong'),
          );
        },
      ),
    );
  }
}
