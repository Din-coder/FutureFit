import 'package:hive_flutter/hive_flutter.dart';
part 'db_models.g.dart';

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