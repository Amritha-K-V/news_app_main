import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background color to black
      // appBar: AppBar(
      //   title: const Text('My Profile', style: TextStyle(color: Colors.white)), // White text in AppBar
      //   backgroundColor: Colors.black, // Black AppBar
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Picture and Name
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
"https://images.pexels.com/photos/17839074/pexels-photo-17839074/free-photo-of-a-woman-in-black-pants-and-a-black-top-leaning-against-a-wall.jpeg?auto=compress&cs=tinysrgb&w=400"                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Amritha',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white), // White text
                    ),
                    Text(
                      'amritha@gmail.com',
                      style: TextStyle(color: Colors.white), // White text
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Profile Options
            Expanded(
              child: ListView(
                children: [
                  _buildProfileOption(context, 'Edit Profile', Icons.edit),
                  _buildProfileOption(context, 'Settings', Icons.settings),
                  _buildProfileOption(context, 'Notifications', Icons.notifications),
                  _buildProfileOption(context, 'Logout', Icons.logout),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileOption(BuildContext context, String title, IconData icon) {
    return ListTile(
      leading: Icon(icon, color: Colors.white), // White icon color
      title: Text(title, style: const TextStyle(color: Colors.white)), // White text
      onTap: () {},
    );
  }
}
