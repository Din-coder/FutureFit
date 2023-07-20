import 'package:flutter/material.dart';
import 'package:futurefit/screens/AfterLogin/widgets/profile/edit_profile.dart';

class Profile extends StatelessWidget {
  Profile({super.key});
  final ScrollController scrollController = ScrollController();
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Scrollbar(
        controller: scrollController,
        child: SingleChildScrollView(
          controller: scrollController,
          physics: const BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.normal),
          child: Column(
            children: [
              const Center(child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage('https://i.pngimg.me/thumb/f/720/1d714a7743.jpg'),
                backgroundColor: Color.fromARGB(127, 131, 181, 221),
              ),),
              const SizedBox(height: 30,),
              const Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 13, 177, 173),
                ),
              ),
              const SizedBox(height: 15,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0,0,0),
                    child: Text(
                      'Age',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Text(
                      '34',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 63, 63, 63),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0,0,0),
                    child: Text(
                      'Birth Date',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Text(
                      '12-10-1960',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 63, 63, 63),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0,0,0),
                    child: Text(
                      'Gender',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Text(
                      'Male',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 63, 63, 63),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0,0,0),
                    child: Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Text(
                      'John@gmail.com',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 63, 63, 63),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0,0,0),
                    child: Text(
                      'Height',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Text(
                      '163',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 63, 63, 63),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0,0,0),
                    child: Text(
                      'Weight',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Text(
                      '65',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 63, 63, 63),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0,0,0),
                    child: Text(
                      'Health Condition',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Text(
                      'Lorem',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 63, 63, 63),
                      ),
                    ),
                  )
                ],
              ),
              
              const SizedBox(height: 30,),
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx){
                      return EditProfile();
                    }),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 13, 177, 173),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5), // Set the border radius here
                  ), 
                  minimumSize: const Size(double.infinity, 50)
                ), 
                child: const Text('EDIT'),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}