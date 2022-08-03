import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:security_guard/Data/common.dart';
import 'package:security_guard/Screens_UI/Authentication//LoginPage.dart';
import 'package:security_guard/Screens_UI/SliderBeforeLogin.dart';
import 'package:security_guard/Widgets/ImagesWidgets.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:flutter/services.dart';


class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {


  final String imageUrl = "https://image.shutterstock.com/image-vector/goddess-moon-galaxy-horoscope-meditation-600w-1917635804.jpg";





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

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 2));

    defaultBlurRadius = 10.0;
    defaultSpreadRadius = 0.5;

    finish(context);
    const Slider_Pages().launch(context,isNewTask: true);
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
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

