import 'package:futurefit/db/models/db_models.dart';
import 'package:hive_flutter/hive_flutter.dart';

//UserModel table Functions
const UserDatabaseName = 'User-Database';

abstract class UserDbFunctions{
  Future<List<UserModel>> getUser();
  Future<void> AddUser(UserModel value);
}

class UserDb implements UserDbFunctions{
  UserDb._internal();

  static UserDb userinstance = UserDb._internal();

  factory UserDb(){
    return userinstance;
  }

  @override
  Future<void> AddUser(UserModel value) async{
    final UserDB = await Hive.openBox<UserModel>(UserDatabaseName);
    await UserDB.add(value);
  }
  
  @override
  Future<List<UserModel>> getUser() async{
    final UserDB = await Hive.openBox<UserModel>(UserDatabaseName);
    // await Hive.box<UserModel>(UserDatabaseName).clear();
    return UserDB.values.toList();
  }

}

//ProfileModel table functions

const ProfileDatabaseName = 'Profile-Database';

abstract class ProfileDbFunctions{
  Future<List<ProfileModel>> getProfile();
  Future<void> addProfile(ProfileModel value);
}

class ProfileDb implements ProfileDbFunctions{
  // ProfileDb._internal;

  // static ProfileDb profileinstance = ProfileDb._internal();

  // factory ProfileDb(){
  //   return profileinstance;
  // }

  @override
  Future<void> addProfile(ProfileModel value) async {
    final ProfileDB = await Hive.openBox<ProfileModel>(ProfileDatabaseName);
    await ProfileDB.add(value);
  }
  
  @override
  Future<List<ProfileModel>> getProfile() async {
    final ProfileDB = await Hive.openBox<ProfileModel>(ProfileDatabaseName);
    // await Hive.box<ProfileModel>(ProfileDatabaseName).clear();
    return ProfileDB.values.toList();
  }

}


//HealthModel table functions

const HealthDatabaseName = 'Health-Database';

abstract class HealthDbFunctions{
  Future<List<HealthModel>> getHealth();
  Future<void> addHealth(HealthModel value);
}

class HealthDb implements HealthDbFunctions{
  // HealthDb._internal;

  // static HealthDb Healthinstance = HealthDb._internal();

  // factory HealthDb(){
  //   return Healthinstance;
  // }

  @override
  Future<void> addHealth(HealthModel value) async {
    final HealthDB = await Hive.openBox<HealthModel>(HealthDatabaseName);
    await HealthDB.add(value);
  }
  
  @override
  Future<List<HealthModel>> getHealth() async {
    final HealthDB = await Hive.openBox<HealthModel>(HealthDatabaseName);
    // await Hive.box<HealthModel>(HealthDatabaseName).clear();
    return HealthDB.values.toList();
  }
  

}

//SensorModel table functions

const SensorDatabaseName = 'Sensor-Database';

abstract class SensorDbFunctions{
  Future<List<SensorModel>> getSensor();
  Future<void> addSensor(SensorModel value);
}

class SensorDb implements SensorDbFunctions{
  // SensorDb._internal;

  // static SensorDb Sensorinstance = SensorDb._internal();

  // factory SensorDb(){
  //   return Sensorinstance;
  // }

  @override
  Future<void> addSensor(SensorModel value) async {
    final SensorDB = await Hive.openBox<SensorModel>(SensorDatabaseName);
    await SensorDB.add(value);
  }
  
  @override
  Future<List<SensorModel>> getSensor() async {
    final SensorDB = await Hive.openBox<SensorModel>(SensorDatabaseName);
    // await Hive.box<SensorModel>(SensorDatabaseName).clear();
    return SensorDB.values.toList();
  }
  

}
