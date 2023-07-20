import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  EditProfile({super.key});
  // ignore: non_constant_identifier_names
  final ScrollController scroll_controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.fromLTRB(15, 10, 10, 10),
          child: Row(
            children: [
              Text(
                'Edit Profile',
                style: TextStyle(
                  color: Color.fromARGB(255, 13, 177, 173),
                  fontSize: 28,
                  fontWeight: FontWeight.w500
                ),
              ),
            ],
          ),
        ), // 
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Scrollbar(
          controller: scroll_controller,
          child: SingleChildScrollView(
            controller: scroll_controller,
            child: Column(
              children: [
                const Center(child: CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage('https://i.pngimg.me/thumb/f/720/1d714a7743.jpg'),
                  backgroundColor: Color.fromARGB(127, 131, 181, 221),
                ),),
                const SizedBox(height: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Name',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    const SizedBox(height: 5,),
                    SizedBox(
                      height: 40,
                      child: TextFormField(decoration: const InputDecoration(
                        hintText: 'Name',
                        border:OutlineInputBorder(),
                      ),),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Age',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    const SizedBox(height: 5,),
                    SizedBox(
                      height: 40,
                      child: TextFormField(decoration: const InputDecoration(
                        hintText: 'Age',
                        border:OutlineInputBorder(),
                      ),),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Gender',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    const SizedBox(height: 5,),
                    SizedBox(
                      height: 40,
                      child: TextFormField(decoration: const InputDecoration(
                        hintText: 'Gender',
                        border:OutlineInputBorder(),
                      ),),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Birth Date',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    const SizedBox(height: 5,),
                    SizedBox(
                      height: 40,
                      child: TextFormField(decoration: const InputDecoration(
                        hintText: 'Birth Date',
                        border:OutlineInputBorder(),
                      ),),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    const SizedBox(height: 5,),
                    SizedBox(
                      height: 40,
                      child: TextFormField(decoration: const InputDecoration(
                        hintText: 'Email',
                        border:OutlineInputBorder(),
                      ),),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Height',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    const SizedBox(height: 5,),
                    SizedBox(
                      height: 40,
                      child: TextFormField(decoration: const InputDecoration(
                        hintText: 'Height',
                        border:OutlineInputBorder(),
                      ),),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Weight',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    const SizedBox(height: 5,),
                    SizedBox(
                      height: 40,
                      child: TextFormField(decoration: const InputDecoration(
                        hintText: 'Weight',
                        border:OutlineInputBorder(),
                      ),),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Health Condition',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    const SizedBox(height: 5,),
                    SizedBox(
                      height: 40,
                      child: TextFormField(decoration: const InputDecoration(
                        hintText: 'Health Condition',
                        border:OutlineInputBorder(),
                      ),),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: (){
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 13, 177, 173),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5), // Set the border radius here
                    ), 
                    minimumSize: const Size(double.infinity, 50)
                  ), 
                  child: const Text('UPDATE'),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}