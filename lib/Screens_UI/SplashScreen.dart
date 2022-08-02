import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:security_guard/Data/common.dart';
import 'package:security_guard/Screens_UI/LoginPage.dart';
import 'package:security_guard/Screens_UI/SliderBeforeLogin.dart';
import 'package:security_guard/Widgets/ImagesWidgets.dart';


class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {


  final String imageUrl = "https://image.shutterstock.com/image-vector/goddess-moon-galaxy-horoscope-meditation-600w-1917635804.jpg";



  /// Launch a new screen
  Future<T?> launch<T>(BuildContext context,
      {bool isNewTask = false,
        PageRouteAnimation? pageRouteAnimation,
        Duration? duration}) async {
    if (isNewTask) {
      return await Navigator.of(context).pushAndRemoveUntil(
        buildPageRoute(
            this!, pageRouteAnimation ?? pageRouteAnimationGlobal, duration),
            (route) => false,
      );
    } else {
      return await Navigator.of(context).push(
        buildPageRoute(
            this!, pageRouteAnimation ?? pageRouteAnimationGlobal, duration),
      );
    }
  }


  void finish(BuildContext context, [Object? result]) {
    if (Navigator.canPop(context)) Navigator.pop(context, result);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
    // Timer(
    //   Duration(seconds: 3),
    //     () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Slider_First()))
    // );
  }

  Future<void> init() async{
    await Future.delayed(const Duration(seconds: 3));
    finish(context);
    const Slider_Pages().launch(context,isNewTask: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body:
        Container(
          child: Center(
            child: ImagesWidgets.circularImage(radius: 100, imageUrl: imageUrl)
          )
        ),
    );
  }
}

