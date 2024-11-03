import 'package:flutter/material.dart';
import 'package:news_app_main/controller/search_screen_controller.dart';
// import 'package:news_app_main/view/search_screen/search_screen.dart';
import 'package:news_app_main/view/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';

void main(){
runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> SearchScreenController())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}