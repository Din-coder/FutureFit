import 'package:flutter/material.dart';

class Doctor extends StatelessWidget {
  const Doctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView.separated(
        itemBuilder: (ctx, index){
          return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(26, 0, 97, 110),),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 30, 0, 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      Text(
                        'Jane Doe',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300
                        ),
                      ),
                      Text(
                        'Area of speciality',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      Text(
                        'Lorem Ipsum',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                            child: Icon(Icons.call_outlined, color: Color.fromARGB(150, 13, 177, 173),),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                            child: Icon(Icons.chat_outlined, color: Color.fromARGB(150, 13, 177, 173),),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                            child: Icon(Icons.email_outlined, color: Color.fromARGB(150, 13, 177, 173),),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(25.0),
                  child: CircleAvatar(radius: 50, backgroundColor: Color.fromARGB(50, 13, 177, 173),),
                ),
              ],
            )
          );
        }, 
        separatorBuilder: (ctx, index){
          return SizedBox(height: 10);
        }, 
        itemCount: 5
      ),
    );
  }
}