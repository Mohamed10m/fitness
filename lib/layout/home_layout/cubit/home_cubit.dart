import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness/layout/home_layout/cubit/home_states.dart';
import 'package:fitness/models/tasks_model.dart';
import 'package:fitness/models/user_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../shared/componants/componants.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialStates());

  static AppCubit get(context) => BlocProvider.of(context);

  void signUp(
      {required String firstName,
      required String lastName,
      required String gender,
      required String age}) {
    emit(SignInLoadingState());
    FirebaseAuth.instance.signInAnonymously().then((value) {
      userCreate(
          firstName: firstName,
          lastName: lastName,
          gender: gender,
          age: age,
          uId: value.user!.uid);

      emit(SignInSuccessState(value.user!.uid));
    }).catchError((error) {
      emit(SignInErrorState());
    });
  }

  void userCreate(
      {required String firstName,
      required String lastName,
      required String gender,
      required String age,
      required String uId}) {
    UserData model = UserData(
      firstName: firstName,
      lastName: lastName,
      gender: gender,
      age: age,
      uId: uId,
    );
    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .set(model.toMap())
        .then((value) {
      userCreate(
          firstName: firstName,
          lastName: lastName,
          gender: gender,
          age: age,
          uId: uId);
      emit(SocialGetUserSuccessStates());
    }).catchError((error) {});
  }

  TasksData? tasksData;
  Future getTasksData() async {

    emit(GetLoadingTasksData());
   await FirebaseFirestore.instance.collection('tasks').doc(uId).get().then((value) {
        tasksData = TasksData.fromJson(value.data()!);

      emit(GetSuccessTasksData());
    }).catchError((error) {
      emit(GetErrorTasksData());
    });
  }

  UserData? userModel;

  Future<void> getUserData() async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .get()
        .then((value) {
      userModel = UserData.fromJson(value.data()!);
      emit(SocialGetDataSuccessStates());
    }).catchError((error) {
      emit(SocialGetUserErrorStates());
    });
  }

  bool isButtonSheetShown = true;
  IconData fabIcon = Icons.edit;
  void changeButtonSheetState({required bool isShow, required IconData icon}) {
    isButtonSheetShown = isShow;
    fabIcon = icon;
    emit(AppChangeButtonSheetState());
  }
}
