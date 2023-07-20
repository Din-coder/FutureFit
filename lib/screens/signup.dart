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
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
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
                Container(
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
                Container(
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
                      activeColor: Color.fromARGB(255, 0, 0, 0),
                      inactiveTrackColor: Color.fromARGB(255, 255, 255, 255),
                      activeTrackColor: const Color.fromARGB(150, 158, 158, 158),
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
                  child: Text('SIGNUP'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5), // Set the border radius here
                    ), 
                    minimumSize: Size(double.infinity, 50)
                  ),
                ),
                
                Row(
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

  Future<void> LoginWithData() async{
    final email = emailController.text;
    final user = userController.text;
    final password = userController.text;
    if(user == password){

    }
    
  }
}