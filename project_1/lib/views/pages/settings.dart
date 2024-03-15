import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _notificationsEnabled = true; // Example setting

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Enable Notifications'),
            trailing: Switch(
              value: _notificationsEnabled,
              onChanged: (newValue) {
                setState(() {
                  _notificationsEnabled = newValue;
                  // Perform any necessary actions when the setting is changed
                });
              },
            ),
          ),
          // Add more ListTile widgets for additional settings
        ],
      ),
    );
  }
}
