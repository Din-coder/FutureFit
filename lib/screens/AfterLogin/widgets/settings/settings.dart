import 'package:flutter/material.dart';
import 'package:futurefit/screens/AfterLogin/widgets/settings/account_settings/account_settings.dart';

class Settings extends StatelessWidget {
  Settings({super.key});

  // ignore: non_constant_identifier_names
  final setting_List = [
    {'set': const Text('Account settings'), 'ico': const Icon(Icons.account_box), },
    {'set': const Text('Notification settings'), 'ico': const Icon(Icons.notifications)},
    {'set': const Text('Data and storage'), 'ico': const Icon(Icons.data_usage)},
    {'set': const Text('Subscription settings'), 'ico': const Icon(Icons.subscriptions)},
    {'set': const Text('Logout'), 'ico': const Icon(Icons.logout)},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, index) {
        return ListTile(
          leading: setting_List[index]['ico'], // Set the leading icon based on the list
          title: setting_List[index]['set'], // Set the title based on the list
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
              return AccountSettings();
            }));
          },
        );
      },
      separatorBuilder: (ctx, index) {
        return const Padding(
          padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Divider(color: Color.fromARGB(61, 158, 158, 158),),
        );
      },
      itemCount: setting_List.length,
    );
  }
}