import 'package:futurefit/db/models/db_models.dart';
import 'package:hive_flutter/hive_flutter.dart';

const UserDatabaseName = 'User-Database';

abstract class UserDbFunctions{
  Future<List<UserModel>> getUser();
  Future<void> AddUser(UserModel value);
}

class UserDb implements UserDbFunctions{
  UserDb._internal();

  static UserDb instance = UserDb._internal();

  factory UserDb(){
    return instance;
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