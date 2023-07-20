import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

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
                  'SignIn',
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 10,),
                TextFormField(
                  controller: userController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Username',
                  ),
                ),
                const SizedBox(height: 10,),
                TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password'
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Remember me'),
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
        
                  }, 
                  child: Text('SIGNIN'),
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
                      'No account yet?',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    Text(
                      ' Register here.',
                      style: TextStyle(
                        color: Color.fromARGB(117, 0, 94, 94),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> LoginWithData() async{
    final user = userController.text;
    final password = userController.text;
    if(user == password){

    }
    
  }
}