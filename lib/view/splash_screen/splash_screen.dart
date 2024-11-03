import 'package:flutter/material.dart';
import 'package:news_app_main/view/bottom_nav_bar_screen/bottom_nav_bar_screen.dart';
// import 'package:news_app_main/view/search_screen/search_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between items
        children: [
          Expanded(
            child: Center(
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUHEU_P3urkocyTTQ9c8kkAJ3Z9Y_urRJ7wQ&s",
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Button at the bottom
          Padding(
            padding: const EdgeInsets.all(16.0), // Add some padding around the button
            child: SizedBox(
              width: double.infinity, // Make button fill the width
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the SearchScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BOTTOMNAVBAR(),
                    ),
                  );
                },
                child:  Text(
                  "Read News",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
