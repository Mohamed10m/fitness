import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../layout/home_layout/cubit/home_cubit.dart';
import '../../layout/home_layout/cubit/home_states.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var firstNameController = TextEditingController();
    var secondNameController = TextEditingController();
    var genderController = TextEditingController();
    var ageController = TextEditingController();
    return BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {


          firstNameController.text = AppCubit.get(context).userModel!.firstName;
          secondNameController.text = AppCubit.get(context).userModel!.lastName;
          genderController.text = AppCubit.get(context).userModel!.gender;
          ageController.text = AppCubit.get(context).userModel!.age;

          return Scaffold(
                  body: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 80,
                          ),
                          const Center(
                            child: Text(
                              'My profile',
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: InkWell(
                              onTap: () {},
                              child: CircleAvatar(
                                radius: 50,
                                child: Image.asset(
                                  'assets/images/two.png',
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: firstNameController,
                            keyboardType: TextInputType.name,
                          ),
                          TextFormField(
                            controller: secondNameController,
                            keyboardType: TextInputType.name,
                            // decoration: InputDecoration(
                            //   label: Text('ahmed',style: TextStyle(color: Colors.black87,fontSize: 25),),
                            //
                            // ),
                          ),
                          TextFormField(
                            controller: genderController,
                            keyboardType: TextInputType.name,
                            // decoration: InputDecoration(
                            //   label: Text('male',style: TextStyle(color: Colors.black87,fontSize: 25),),
                            //
                            // ),
                          ),
                          TextFormField(
                            controller: ageController,
                            keyboardType: TextInputType.name,
                            // decoration: InputDecoration(
                            //   label: Text('10',style: TextStyle(color: Colors.black87,fontSize: 25),),
                            //
                            // ),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          Center(
                            child: Container(
                              height: 50,
                              width: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.purple.withOpacity(0.7),
                                boxShadow: const [
                                  BoxShadow(
                                    offset: Offset(0, 2),
                                    blurRadius: 1,
                                    spreadRadius: 1,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              child: TextButton(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  onPressed: () {},
                                  child: const Text(
                                    'save',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                        color: Colors.white),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              });
  }
}
