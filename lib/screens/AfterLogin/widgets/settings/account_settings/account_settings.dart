import 'package:flutter/material.dart';
import 'package:futurefit/screens/AfterLogin/widgets/settings/account_settings/username_password_change.dart';

class AccountSettings extends StatelessWidget {
  AccountSettings({super.key});

  // ignore: non_constant_identifier_names
  final setting_List = [
    {
      'set': const Text('Username/Password change'),
      'ico': const Icon(Icons.account_box),
      'dest': UserPasswordChangeScreen(),
    },
    {
      'set': const Text('Delete account'),
      'ico': const Icon(Icons.notifications),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              'Account Settings',
              style: TextStyle(
                color: Color.fromARGB(255, 13, 177, 173),
                fontSize: 28,
                fontWeight: FontWeight.w600
              ),
            ),
          ],
        ), // Dynamic title based on the selected screen
      ),
      body: SafeArea(
          child: ListView.separated(
          itemBuilder: (ctx, index) {
            return ListTile(
              leading: setting_List[index]
                  ['ico'], // Set the leading icon based on the list
              title: setting_List[index]
                  ['set'], // Set the title based on the list
              onTap:() {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return UserPasswordChangeScreen();
                  },)
                );
              },
              // onTap: () {
              //   Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
              //     return;
              //   }));
              // },
            );
          },
          separatorBuilder: (ctx, index) {
            return const Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Divider(
                color: Color.fromARGB(61, 158, 158, 158),
              ),
            );
          },
          itemCount: setting_List.length,
        )
      ),
    );
  }
}
