// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

import 'dashboard.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool lockInBackground = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.more_vert,
          color: Colors.black,
        ),
        title: const Text(
          'SETTING',
          style: TextStyle(
              fontFamily: "FontPoppins",
              fontWeight: FontWeight.w700,
              fontSize: 40,
              color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back, size: 30, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: Stack(children: <Widget>[
        SettingsList(
          sections: [
            SettingsSection(
              title: Text('Common'),
              tiles: [
                SettingsTile(
                  title: Text('Language'),
                  leading: Icon(Icons.language),
                ),
                SettingsTile(
                    title: Text('Environment'),
                    leading: Icon(Icons.cloud_queue)),
              ],
            ),
            SettingsSection(
              title: Text('Account'),
              tiles: [
                SettingsTile(
                    title: Text('Phone number'), leading: Icon(Icons.phone)),
                SettingsTile(title: Text('Email'), leading: Icon(Icons.email)),
                SettingsTile(
                    title: Text('Sign out'), leading: Icon(Icons.exit_to_app)),
              ],
            ),
            SettingsSection(
              title: Text('Misc'),
              tiles: [
                SettingsTile(
                    title: Text('Terms of Service'),
                    leading: Icon(Icons.description)),
                SettingsTile(
                    title: Text('Open source licenses'),
                    leading: Icon(Icons.collections_bookmark)),
              ],
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 730, bottom: 0),
          height: 50,
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Dashboard(),
                      ));
                },
                tooltip: "Beranda",
                iconSize: 30,
                color: Colors.grey,
              ),
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SettingsScreen(),
                      ));
                },
                tooltip: "Settings",
                iconSize: 28,
                color: const Color.fromARGB(255, 109, 13, 13),
              ),
            ],
          ),
        )
      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Pengaturan',
          ),
        ],
        currentIndex: 3,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }
}
