import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  EditProfile({super.key});
  final ScrollController scroll_controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
          child: Row(
            children: [
              Text(
                'Edit Profile',
                style: const TextStyle(
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
            child: Container(
              child: Column(
                children: [
                  Center(child: CircleAvatar(
                    radius: 70,
                    backgroundColor: Color.fromARGB(127, 131, 181, 221),
                  ),),
                  const SizedBox(height: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name'),
                      SizedBox(height: 5,),
                      SizedBox(
                        height: 40,
                        child: TextFormField(decoration: InputDecoration(
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
                      Text('Age'),
                      SizedBox(height: 5,),
                      SizedBox(
                        height: 40,
                        child: TextFormField(decoration: InputDecoration(
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
                      Text('Gender'),
                      SizedBox(height: 5,),
                      SizedBox(
                        height: 40,
                        child: TextFormField(decoration: InputDecoration(
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
                      Text('Birth Date'),
                      SizedBox(height: 5,),
                      SizedBox(
                        height: 40,
                        child: TextFormField(decoration: InputDecoration(
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
                      Text('Email'),
                      SizedBox(height: 5,),
                      SizedBox(
                        height: 40,
                        child: TextFormField(decoration: InputDecoration(
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
                      Text('Height'),
                      SizedBox(height: 5,),
                      SizedBox(
                        height: 40,
                        child: TextFormField(decoration: InputDecoration(
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
                      Text('Weight'),
                      SizedBox(height: 5,),
                      SizedBox(
                        height: 40,
                        child: TextFormField(decoration: InputDecoration(
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
                      Text('Health Condition'),
                      SizedBox(height: 5,),
                      SizedBox(
                        height: 40,
                        child: TextFormField(decoration: InputDecoration(
                          hintText: 'Health Condition',
                          border:OutlineInputBorder(),
                        ),),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: (){
                    }, 
                    child: Text('UPDATE'),
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 13, 177, 173),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5), // Set the border radius here
                      ), 
                      minimumSize: Size(double.infinity, 50)
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}