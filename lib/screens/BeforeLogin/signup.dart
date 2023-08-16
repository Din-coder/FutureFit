import 'package:flutter/material.dart';
import 'package:futurefit/db/functions/db_functions.dart';
import 'package:futurefit/db/models/db_models.dart';
import 'package:futurefit/screens/BeforeLogin/login.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final emailController = TextEditingController();
  final userController = TextEditingController();
  final passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  String? ValidateEmail(String? email) {
    RegExp emailRegex = RegExp(r'^[\w\.-]+@[\w-]+\.\w{2,3}(\.\w{2,3})?$');
    final isEmailValid = emailRegex.hasMatch(email ?? '');
    if(!isEmailValid){
      return 'Please enter a valid email';
    }
    return null;
  }

  String? ValidatePassword(String? password){
    if(password!.length < 8){
      return 'Please enter a valid password which includes: \n1. Eight digits\n2. Uppercase characters\n3. Lowercase characters\n4. Symbols\n5. Numbers';
    } 
    if(!password.contains(RegExp(r'[A-Z]'))){
      return 'Please enter a valid password which includes: \n1. Eight digits\n2. Uppercase characters\n3. Lowercase characters\n4. Symbols\n5. Numbers';
    }
    if(!password.contains(RegExp(r'[a-z]'))){
      return 'Please enter a valid password which includes: \n1. Eight digits\n2. Uppercase characters\n3. Lowercase characters\n4. Symbols\n5. Numbers';
    }
    if(!password.contains(RegExp(r'[0-9]'))){
      return 'Please enter a valid password which includes: \n1. Eight digits\n2. Uppercase characters\n3. Lowercase characters\n4. Symbols\n5. Numbers';
    }
    if(!password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))){
      return 'Please enter a valid password which includes: \n1. Eight digits\n2. Uppercase characters\n3. Lowercase characters\n4. Symbols\n5. Numbers';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'SignUp',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 13, 177, 173)
                    ),
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Email',
                    ),
                    validator: ValidateEmail,
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    controller: userController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Username',
                    ),
                    validator: (username)=>username!.length<3?'Please enter a valid username':null,
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password'
                    ),
                    validator: ValidatePassword,
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'I agree to terms of use',
                        style: TextStyle(
                          color: Color.fromARGB(255, 139, 139, 139),
                        ),
                      ),
                      Switch(
                        value: true, 
                        activeColor: const Color.fromARGB(255, 13, 177, 173),
                        inactiveTrackColor: const Color.fromARGB(255, 255, 255, 255),
                        activeTrackColor: const Color.fromARGB(149, 196, 195, 195),
                        onChanged: (ctx){
            
                        }
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: () async{
                      
                      final _validate = _formKey.currentState!.validate();
                      if (!_validate == false){
                        SignUpWithData(context);
                      }
                      
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 13, 177, 173),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5), // Set the border radius here
                      ), 
                      minimumSize: const Size(double.infinity, 50)
                    ), 
                    child: const Text('SIGNUP'),
                  ),
                  
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already a member?',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      Text(
                        ' SignIn.',
                        style: TextStyle(
                          color: Color.fromARGB(117, 0, 94, 94),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Future<void> SignUpWithData(BuildContext ctx) async{
    final user = userController.text;
    final email = emailController.text;
    final password = userController.text;
    bool isOriginal = true;


    final userList = await UserDb().getUser();
    userList.forEach((element) {
      if(element.username == user){
        isOriginal = false;
        ScaffoldMessenger.of(ctx).showSnackBar(
          const SnackBar(
            duration: Duration(seconds: 10),
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(20),
            backgroundColor: Color.fromARGB(199, 255, 17, 0),
            content: Text('Username already exists')
          )
        );
        return;
      }
      if(element.email == email){
        isOriginal = false;
        ScaffoldMessenger.of(ctx).showSnackBar(
          const SnackBar(
            duration: Duration(seconds: 10),
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(20),
            backgroundColor: Color.fromARGB(199, 255, 17, 0),
            content: Text('The same email has already been used for another account.')
          )
        );
        return;
      } 
    });

    if (isOriginal == true){
      final userDatas = UserModel(username: user, email: email, password: password);
      await UserDb().AddUser(userDatas);
      Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (ctx){
      return LoginScreen();
    }));
    }

  }
}


        

        


