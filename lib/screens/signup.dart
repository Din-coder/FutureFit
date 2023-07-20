import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final emailController = TextEditingController();
  final userController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
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
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Email',
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    controller: userController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Username',
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password'
                    ),
                  ),
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
                  onPressed: (){
                    LoginWithData();
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
    );
  }

  // ignore: non_constant_identifier_names
  Future<void> LoginWithData() async{
    final user = userController.text;
    final password = userController.text;
    // ignore: unrelated_type_equality_checks
    if(user == password){

    }
    
  }
}