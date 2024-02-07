import 'package:flutter/material.dart';
import 'package:music/screens/home_screen.dart';
import 'package:music/screens/playlist_screen.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';


class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade400.withOpacity(0.7),
      appBar: AppBar(

        backgroundColor: Colors.transparent,
        title: Text('Settings'),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PlaylistScreen()));
          },
        ),

      ),
      body: ListView(

        children: <Widget>[
         // Divider(color: Colors.black,), // Add a divider between list tiles


          ListTile(
            title: Text('Account'),
            onTap: () {
              // Handle account settings
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            leading: Icon(Icons.chevron_right_outlined),

          ),

          Divider(color: Colors.black,), // Add a divider between list tiles
          ListTile(
            title: Text('Notifications'),
            onTap: () {
              // Handle notification settings
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            leading: Icon(Icons.chevron_right_outlined),

          ),
          Divider(color: Colors.black,), // Add a divider between list tiles
          ListTile(
            title: Text('Playback'),
            onTap: () {
              // Handle playback settings
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PlaylistScreen()));
            },
            leading: Icon(Icons.chevron_right_outlined),

          ),
          Divider(color: Colors.black,), // Add a divider between list tiles
          ListTile(
            title: Text('Help & Support'),
            onTap: () {
              // Handle appearance settings
            },
            leading: Icon(Icons.chevron_right_outlined),

          ),
          Divider(color: Colors.black,), // Add a divider between list tiles
          ListTile(
            title: Text('About'),
            onTap: () {
              // Handle about page
            },
            leading: Icon(Icons.chevron_right_outlined),

          ),
          Divider(color: Colors.black,), // Add a divider between list tiles

        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SettingScreen(),
  ));
}
