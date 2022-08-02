import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:security_guard/Screens_UI/Authentication//LoginPage.dart';
import 'package:security_guard/Screens_UI/SliderBeforeLogin.dart';
import 'package:security_guard/Screens_UI/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Security Guard',
      theme: ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(builders: {TargetPlatform.android: CupertinoPageTransitionsBuilder(),}),
        
        // primarySwatch: Colors.blue,
        // appBarTheme: AppBarTheme(
        //   iconTheme: IconThemeData(color: Colors.black),
        //   color: Colors.blue,
        //   foregroundColor: Colors.black,
        //   systemOverlayStyle: SystemUiOverlayStyle( //<-- SEE HERE
        //     // Status bar color
        //     statusBarColor: Colors.blue,
        //     statusBarIconBrightness: Brightness.dark,
        //     statusBarBrightness: Brightness.light,
        //   ),
        // ),
      ),
      home: Splash_Screen()
    );
  }
}
