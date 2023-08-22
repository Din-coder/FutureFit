import 'package:flutter/material.dart';
import 'package:futurefit/db/models/db_models.dart';
import 'package:futurefit/screens/AfterLogin/homescreen.dart';
import 'package:futurefit/screens/BeforeLogin/login.dart';
import 'package:futurefit/screens/BeforeLogin/signup.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'screens/BeforeLogin/Register/add_more_details.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if(!Hive.isAdapterRegistered(UserModelAdapter().typeId)){
    Hive.registerAdapter(UserModelAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FutureFit',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginScreen(),
    );
  }
}

Future<void> getSavedData(BuildContext context) async{
  final sharedPrefs = await SharedPreferences.getInstance();
  final saveValue = sharedPrefs.getString('username');
  if (saveValue != null){
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
      return HomeScreen();
    }));
  }
}