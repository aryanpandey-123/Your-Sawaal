import 'package:YourSawaal/screens/login.dart';
import 'package:YourSawaal/screens/profile.dart';
import 'package:YourSawaal/screens/settings.dart';
import 'package:flutter/material.dart';

class sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 50)),
              CircleAvatar(
                radius: 40,
                child: ClipOval(child: Image.asset("images/user.png")),
              ),
              FractionallySizedBox(
                widthFactor: 1,
                child: RaisedButton(
                  elevation: 0,
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ProfilePage();
                        },
                      ),
                    );
                  },
                  child: Text('User Name',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
              ),
            ],
          ),
          Divider(
            height: MediaQuery.of(context).size.height * 0.01,
            thickness: 0.2,
            color: Colors.grey,
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Messages'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.bookmarks_outlined),
            title: Text('Bookmarks'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.drafts_outlined),
            title: Text('Drafts'),
            onTap: () {},
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            height: MediaQuery.of(context).size.height * 0.01,
            thickness: 0.2,
            color: Colors.grey,
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.settings_suggest_outlined),
            title: Text('Settings'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return setting();
                  },
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.brightness_medium_outlined),
            title: Text('Theme'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () {
              // sharedservice.logout(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return login();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
