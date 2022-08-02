import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
// import 'package:nb_utils/nb_utils.dart';

T? makeNullable<T>(T? value) => value;

enum PageRouteAnimation { Fade, Scale, Rotate, Slide, SlideBottomTop }