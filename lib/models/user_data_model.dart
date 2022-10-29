class UserData {
  late String firstName;
  late String lastName;
  late String gender;
  dynamic age;
  late String  uId;

  UserData(
      {required this.firstName, required this.lastName, required this.gender, required this.age, required this.uId});

  UserData.fromJson(Map<String, dynamic>json){
    firstName = json['firstName'];
    lastName = json['lastName'];
    gender = json['gender'];
    age = json['age'];
    uId = json['uId'];
  }
  Map<String, dynamic> toMap() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'gender': gender,
      'age': age,
      'uId': uId,
    };
  }
}
