import 'package:hive_flutter/hive_flutter.dart';
part 'db_models.g.dart';


//UserModel
@HiveType(typeId: 1)
class UserModel{
  @HiveField(0)
  String? user_id;
  @HiveField(1)
  final String username;
  @HiveField(2)
  final String email;
  @HiveField(3)
  final String password;

  UserModel({
    required this.username, 
    required this.email, 
    required this.password
  }){
    user_id = DateTime.now().millisecondsSinceEpoch.toString();
  }
}

//GenderType
@HiveType(typeId: 2)
enum GenderType{
  @HiveField(0)
  male,
  @HiveField(1)
  female,
  @HiveField(2)
  other,
}

//ProfileModel
@HiveType(typeId: 3)
class ProfileModel{
  @HiveField(0)
  String? profile_id;
  @HiveField(1)
  final UserModel user;
  @HiveField(2)
  final String firstname;
  @HiveField(3)
  final String lastname;
  @HiveField(4)
  final int age;
  @HiveField(5)
  final GenderType gender;
  @HiveField(6)
  final DateTime birthdate;

  ProfileModel({
    required this.user, 
    required this.firstname, 
    required this.lastname, 
    required this.age, 
    required this.gender, 
    required this.birthdate
  }){
    profile_id = DateTime.now().millisecondsSinceEpoch.toString();
  }
}

// HealthStatusType
@HiveType(typeId: 4)
enum HealthStatusType{
  @HiveField(0)
  green,
  @HiveField(1)
  yellow,
  @HiveField(2)
  red
}

// HealthModel
@HiveType(typeId: 5)
class HealthModel{
  @HiveField(0)
  String? Health_id;
  @HiveField(1)
  final ProfileModel profile;
  @HiveField(2)
  final double height;
  @HiveField(3)
  final double weight;
  @HiveField(4)
  final HealthStatusType status;


  HealthModel({
    required this.profile, 
    required this.height, 
    required this.weight,
    required this.status
  }){
    Health_id = DateTime.now().millisecondsSinceEpoch.toString();
  }
}

@HiveType(typeId: 6)
enum SensorStatusType{
  @HiveField(0)
  on,
  @HiveField(1)
  off,
}

@HiveType(typeId: 7)
class SensorModel{
  @HiveField(0)
  String? sensor_id;
  @HiveField(1)
  final UserModel user;
  @HiveField(2)
  final String sensor_name;
  @HiveField(3)
  final SensorStatusType status;
  @HiveField(4)
  final double battery_level;

  SensorModel({
    required this.user, 
    required this.sensor_name, 
    required this.status, 
    required this.battery_level
  }){
    sensor_id = DateTime.now().millisecondsSinceEpoch.toString();
  }
}

