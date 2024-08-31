import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_project/responsive/mobile_screen_layout.dart';
import 'package:udemy_project/responsive/responsive_layout_screen.dart';
import 'package:udemy_project/responsive/web_screen_layout.dart';
import 'package:udemy_project/utils/colors.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram Clone",
      theme: ThemeData.dark().copyWith(
        //scaffoldBackgroundColor: Color(0xFF000000)
      ),
      //darkTheme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),)
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
        bottomOpacity: 0.9,
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 50,
        shadowColor:Colors.black87,
      ),
    );
  }
}

