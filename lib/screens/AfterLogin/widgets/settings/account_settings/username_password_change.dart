import 'package:flutter/material.dart';

class UserPasswordChangeScreen extends StatelessWidget {
  UserPasswordChangeScreen({super.key});

  final emailController = TextEditingController();
  final userController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              'Username/Password\nChange',
              style: TextStyle(
                color: Color.fromARGB(255, 13, 177, 173),
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),
            ),
          ],
        ), // Dynamic title based on the selected screen
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
              const Text(
                'Change Username',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10,),
              SizedBox(
                height: 50,
                child: TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Username',
                  ),
                ),
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
                child: const Text('UPDATE USERNAME'),
              ),
              SizedBox(height: 10,),
              const Text(
                'Change Password',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10,),
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
                child: const Text('UPDATE PASSWORD'),
              ),
              
              
            ],
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