import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView.separated(
        itemBuilder: (ctx, index){
          return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color.fromARGB(26, 0, 97, 110),),
            child: const ListTile(
              leading: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              title: Text(
                'Alert',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              subtitle: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting',
                style: TextStyle(
                  color: Color.fromARGB(153, 71, 71, 71),
                ),
              ),
            ),
          );
        }, 
        separatorBuilder: (ctx, index){
          return const SizedBox(height: 10);
        }, 
        itemCount: 3
      ),
    );
  }
}