import 'package:flutter/material.dart';
import 'package:news_app_main/view/explore_screen/explore_screen.dart';
import 'package:news_app_main/view/profile_screen/profile_screen.dart';
import 'package:news_app_main/view/saved_screen/saved_screen.dart';
import 'package:news_app_main/view/search_screen/search_screen.dart';




class BOTTOMNAVBAR extends StatefulWidget {
  const BOTTOMNAVBAR({super.key});

  @override
  State<BOTTOMNAVBAR> createState() => _BOTTOMNAVBARState();
}

class _BOTTOMNAVBARState extends State<BOTTOMNAVBAR> {

  List Screens = [
    ExploreScreen(),
    SearchScreen(),
    SavedScreen(),
    // ProfileScreen(),
    // Container(),
    ProfileScreen(),

    
//   CallScreen(),
//   ChatScreen(),
//   ExploreScreen(),
//   ContactsScreen(),
//   ProfileScreen(),

  ];
  int selectIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("Newsly",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
      ),
      actions: [IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.grey.shade300,))],
      backgroundColor: Colors.black,),
      body: Screens[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectIndex,
selectedLabelStyle: TextStyle(fontSize: 10),
unselectedLabelStyle: TextStyle(fontSize: 10),
type: BottomNavigationBarType.fixed,
backgroundColor: Colors.white,
selectedItemColor: Colors.black,
unselectedItemColor: Colors.grey.shade800,
selectedIconTheme:IconThemeData(),
        items:[ 
BottomNavigationBarItem(icon: Icon(Icons.explore_outlined),label: "Explore"),
BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
BottomNavigationBarItem(icon: Icon(Icons.bookmark_border),label: "Saved"),
BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),


        ],
        onTap: (value) {
          selectIndex=value;
          setState(() {
            
          });
        },
        ),
    );
  }
}