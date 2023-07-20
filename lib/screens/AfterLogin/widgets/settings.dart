import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  Settings({super.key});

  final setting_List = [
    {'set': Text('Account settings'), 'ico': const Icon(Icons.account_box)},
    {'set': Text('Notification settings'), 'ico': const Icon(Icons.notifications)},
    {'set': Text('Data and storage'), 'ico': const Icon(Icons.data_usage)},
    {'set': Text('Subscription settings'), 'ico': const Icon(Icons.subscriptions)},
    {'set': Text('Logout'), 'ico': const Icon(Icons.logout)},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        itemBuilder: (ctx, index) {
          return ListTile(
            leading: setting_List[index]['ico'], // Set the leading icon based on the list
            title: setting_List[index]['set'], // Set the title based on the list
          );
        },
        separatorBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Divider(color: Color.fromARGB(61, 158, 158, 158),),
          );
        },
        itemCount: setting_List.length,
      ),
    );
  }
}