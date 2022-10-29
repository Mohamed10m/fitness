import 'package:fitness/layout/home_layout/cubit/home_cubit.dart';
import 'package:fitness/layout/home_layout/cubit/home_states.dart';
import 'package:fitness/shared/network/local/cache_helper.dart';
import 'package:fitness/shared/componants/componants.dart';
import 'package:fitness/layout/home_layout/home_view.dart';
import 'package:fitness/shared/componants/assets_manager.dart';
import 'package:fitness/shared/componants/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateScreen extends StatelessWidget {


  const CreateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var namedController = TextEditingController();
    var lastNameController = TextEditingController();
    var genderController = TextEditingController();
    var ageController = TextEditingController();
    var formKey = GlobalKey<FormState>();
   return BlocProvider(
     create: (BuildContext context) => AppCubit(),
     child:
     BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){
      if(state is SignInSuccessState){
      AppPreferences.saveData('uId', state.uId);
      navigateAndFinish(context,  const SimpleAppBarPage());

      }
      },
      builder: (context, state) {

      return Scaffold(
backgroundColor: Colors.teal,
      body: SafeArea(

        child: SizedBox(

        width: double.infinity,
        height: double.infinity,
        // decoration: const BoxDecoration(
        // image: DecorationImage(
        // image: AssetImage(ImageAssets.backGroundImage),
        //   fit: BoxFit.fill,
        //   ),
        //   ),
          child: SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.only(top: 50.0, right: 30, left: 25),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Center(
                        child: CircleAvatar(
                      radius: 56,
                      backgroundColor: ColorManager.white,
                      child: Image.asset(
                       ImageAssets.chooseImage,
                        scale: 9.0,
                      ),
                    )),
                    const SizedBox(
                      height: 10,
                    ),
                     Center(
                        child: Text(
                      'add profile picture',
                      style: TextStyle(fontSize: 28, color: ColorManager.white),
                    )),
                    const SizedBox(
                      height: 30,
                    ),
                    Form(
                        key: formKey,
                        child: Column(
                          children: [
                            Row(children: [
                              Expanded(
                                child: defaultFormField(
                                  text: "First name",
                                  validate: (String? value) {
                                    if (value!.isEmpty) {
                                      return "name must not be empty";
                                    } else {
                                      return null;
                                    }
                                  },
                                  controller: namedController,
                                  type: TextInputType.name,
                                ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Expanded(
                                child: defaultFormField(
                                  text: "Last name",
                                  validate: (String? value) {
                                    if (value!.isEmpty) {
                                      return "name must not be empty";
                                    } else {
                                      return null;
                                    }
                                  },
                                  controller: lastNameController,
                                  type: TextInputType.name,
                                ),
                              ),
                            ]),
                            const SizedBox(
                              height: 15,
                            ),
                            defaultFormField(
                              text: "Gender",
                              validate: (String? value) {
                                if (value!.isEmpty) {
                                  return "name must not be empty";
                                } else {
                                  return null;
                                }
                              },
                              controller: ageController,
                              type: TextInputType.name,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            defaultFormField(
                              text: "Age",
                              validate: (String? value) {
                                if (value!.isEmpty) {
                                  return "name must not be empty";
                                } else {
                                  return null;
                                }
                              },
                              controller: genderController,
                              type: TextInputType.name,
                            ),
                          ],
                        )),
                    const SizedBox(height: 40),
                    Center(
                      child: customButton(
                          height: 55,
                          textColor: ColorManager.black,
                          text: 'Start',
                          color: ColorManager.white,
                          onPress: () {
                            if (formKey.currentState!.validate()){
                              AppCubit.get(context).signUp(
                                firstName: namedController.text,
                                lastName: lastNameController.text,
                                gender: genderController.text,
                                age: ageController.text,
                              );
                            }
                          }),
                    )
                  ]),
            ),
          )),
      ),
      );
      }
      ),
   );
  }
}
