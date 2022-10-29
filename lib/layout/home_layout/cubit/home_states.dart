abstract class AppStates{}

class AppInitialStates extends AppStates{}

class AppChangeButtonNavBarStates extends AppStates{}
class SignInSuccessState extends AppStates{
  final String uId;

  SignInSuccessState(this.uId);

}
class SignInErrorState extends AppStates{}
class SignInLoadingState extends AppStates{}

class SocialGetUserLoadingStates extends AppStates{}
class SocialGetUserSuccessStates extends AppStates{}
class SocialGetDataSuccessStates extends AppStates{}
class SocialGetUserErrorStates extends AppStates{}
class SocialCreateUserSuccessStates extends AppStates{}
class SocialCreateUserErrorStates extends AppStates{}
class GetSelectedItems extends AppStates{}
class AppChangeButtonSheetState extends AppStates{}
class GetLoadingTasksData extends AppStates{}
class GetSuccessTasksData extends AppStates{}
class GetErrorTasksData extends AppStates{}
