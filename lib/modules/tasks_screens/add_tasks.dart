import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitness/shared/componants/componants.dart';
import 'package:fitness/shared/componants/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class AddTasks extends StatefulWidget {
  const AddTasks({Key? key}) : super(key: key);

  @override
  _AddTaskSState createState() => _AddTaskSState();
}

class _AddTaskSState extends State<AddTasks> {
  final TextEditingController _categoryController =
      TextEditingController(text: 'Choose an exercise');
  final TextEditingController _titleController =
      TextEditingController(text: '');

  final TextEditingController _deadlineDateController =
      TextEditingController(text: 'pick up a date');
  final _formKey = GlobalKey<FormState>();

  DateTime? date;
  Timestamp? _deadlineDateTimeStamp;
  @override
  void dispose() {
    super.dispose();
    _categoryController.dispose();
    _titleController.dispose();
    _deadlineDateController.dispose();
  }

  void uploadFct() async {
    final isValid = _formKey.currentState!.validate();

    FocusScope.of(context).unfocus();
    if (isValid) {
      final taskId = const Uuid().v4();
      await FirebaseFirestore.instance.collection('tasks').doc(taskId).set({
        'taskId': taskId,
        'uploadedBy': uId,
        'taskTitle': _titleController.text,
        'deadlineDate': _deadlineDateController.text,
        'deadlineDateTimeStamp': _deadlineDateTimeStamp,
        'taskCategory': _categoryController.text,
        'isDone': false,
        'createdAt': Timestamp.now(),
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    List<String> exercises = [
      'Abdominal(Level 1)',
      'Abdominal(Level 2)',
      'Abdominal(Level 3)',
      'Yoga(Level 1)',
      'Yoga(Level 2)',
      'Yoga(Level 3)',
      'Cardio(Level 1)',
      'Cardio(Level 2)',
      'Cardio(Level 3)',
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'New Task',
                        style: TextStyle(
                            color: Colors.pink.shade800,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textsWidget(textLabel: 'Exercises*'),
                        _textFormFields(
                            valueKey: 'Choose an exercise',
                            controller: _categoryController,
                            enabled: false,
                            fct: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text(
                                        'Task category',
                                        style: TextStyle(
                                            color: Colors.pink.shade300,
                                            fontSize: 20),
                                      ),
                                      content: SizedBox(
                                        width: double.maxFinite,
                                        child: ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: exercises.length,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    _categoryController.text =
                                                        exercises[index];
                                                  });
                                                  Navigator.pop(context);
                                                },
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .check_circle_rounded,
                                                      color: Colors.red[200],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        exercises[index],
                                                        style: const TextStyle(
                                                            color: Color(
                                                                0xFF00325A),
                                                            fontSize: 24,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle: FontStyle
                                                                .italic),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            }),
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.canPop(context)
                                                ? Navigator.pop(context)
                                                : null;
                                          },
                                          child: const Text('Close'),
                                        ),
                                        TextButton(
                                            onPressed: () {},
                                            child: const Text('Cancel filter'))
                                      ],
                                    );
                                  });
                            },
                            maxLength: 100),
                        textsWidget(textLabel: 'Exercise Name*'),
                        _textFormFields(
                            valueKey: 'Choose an exercise',
                            controller: _titleController,
                            enabled: true,
                            fct: () {},
                            maxLength: 100),
                        textsWidget(textLabel: 'Exercise Day*'),
                        _textFormFields(
                            valueKey: 'DeadlineDate',
                            controller: _deadlineDateController,
                            enabled: false,
                            fct: () {
                              _pickDate();
                            },
                            maxLength: 100),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: MaterialButton(
                              minWidth: double.infinity,
                              onPressed: uploadFct,
                              color: Colors.pink.shade700,
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13),
                                  side: BorderSide.none),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 14),
                                    child: Text(
                                      'Save Task',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: MaterialButton(
                              minWidth: double.infinity,
                              onPressed: uploadFct,
                              color: Colors.pink.shade700,
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13),
                                  side: BorderSide.none),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:  [
                                  Padding(
                                    padding:  const EdgeInsets.symmetric(vertical: 14),
                                    child: Text(
                                      'Cancel',
                                      style: TextStyle(
                                          color:ColorManager.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Icon(
                                    Icons.upload_file,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _pickDate() async {
    date = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now().subtract(const Duration(days: 0)),
        lastDate: DateTime(2100));

    if (date != null) {
      setState(() {
        _deadlineDateTimeStamp =
            Timestamp.fromMicrosecondsSinceEpoch(date!.microsecondsSinceEpoch);
        _deadlineDateController.text =
            '${date!.year}-${date!.month}-${date!.day}';
      });
    }
  }

  textsWidget({String? textLabel}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        textLabel!,
        style: TextStyle(
            fontSize: 18,
            color: Colors.pink.shade800,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  _textFormFields(
      {required String valueKey,
      required TextEditingController controller,
      required bool enabled,
      required Function fct,
      required int maxLength}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          fct();
        },
        child: TextFormField(
          controller: controller,
          enabled: enabled,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Field is missing';
            }
            return null;
          },
          key: ValueKey(valueKey),
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontStyle: FontStyle.italic),
          maxLength: maxLength,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            fillColor: Colors.grey[350],
            filled: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.pink.shade800),
            ),
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }
}
