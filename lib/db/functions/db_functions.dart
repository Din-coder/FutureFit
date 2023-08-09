import 'package:futurefit/db/models/db_models.dart';

abstract class UserDbFunctions{
  // List<UserModel> getUser();
  Future<void> AddUser(UserModel value);
}

class UserDb implements UserDbFunctions{
  @override
  Future<void> AddUser(UserModel value) async{
    
  }

}