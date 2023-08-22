import 'package:flutter/material.dart';
import 'package:futurefit/db/functions/db_functions.dart';
import 'package:futurefit/main.dart';
import 'package:futurefit/screens/AfterLogin/homescreen.dart';
import 'package:futurefit/screens/BeforeLogin/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final userController = TextEditingController();
  final passwordController = TextEditingController();
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    // getSavedData(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'SignIn',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 13, 177, 173)
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  controller: userController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    contentPadding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    hintText: 'Username',
                  ),
                ),
                const SizedBox(height: 10,),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    contentPadding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    hintText: 'Password',
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Remember me'),
                    Switch.adaptive(
                      value: rememberMe, 
                      activeColor: const Color.fromARGB(255, 13, 177, 173),
                      inactiveTrackColor: const Color.fromARGB(255, 255, 255, 255),
                      activeTrackColor: const Color.fromARGB(149, 199, 199, 199),
                      onChanged: (ctx){
                        setState(() {
                          rememberMe = !rememberMe;
                        });
                      }
                    ),
                    
                  ],
                ),
                const SizedBox(height: 10,),
                ElevatedButton(
                  onPressed: (){
                    LoginWithData(context);
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 13, 177, 173),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30), // Set the border radius here
                    ), 
                    minimumSize: const Size(double.infinity, 45)
                  ), 
                  child: const Text('SIGNIN'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'No account yet?',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (ctx){
                            return SignupScreen();
                          }), 
                          (route) => false);
                      }, 
                      child: const Text(
                        ' Register here.',
                        style: TextStyle(
                          color: Color.fromARGB(117, 0, 94, 94),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ),
                    
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Future<void> LoginWithData(context) async{
    final SharedPreferences loginData = await SharedPreferences.getInstance();
    final user = userController.text;
    final password = passwordController.text;
    bool isValidUser = false;
    bool isValidPassword = false;


    final userList = await UserDb().getUser();
    for (var element in userList) {
      print('${element.username} ${element.password}');
      if(element.username == user){
        isValidUser = true;
      }
      if(element.password == password){
        isValidPassword = true;
      }
    }
    if(!isValidUser == true){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          duration: Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(20),
          backgroundColor: Color.fromARGB(199, 255, 17, 0),
          content: Text('There is no account in this username')
        )
      );
      return;
    } else if (!isValidPassword == true){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          duration: Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(20),
          backgroundColor: Color.fromARGB(199, 255, 17, 0),
          content: Text('Incorrect password. Try Again.')
        )
      );
      return;
    } else if (isValidUser == true && isValidPassword == true){
      if (rememberMe == true){
        await loginData.setString('username', user);
      }
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx){
        return HomeScreen();
      }), (route) => false);
    }
  }
}