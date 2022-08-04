import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:security_guard/Constant.dart';
import 'package:security_guard/Screens_UI/Authentication//LoginPage.dart';
import 'package:security_guard/Widgets/ImagesWidgets.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Slider_Pages extends StatefulWidget {
  const Slider_Pages({Key? key}) : super(key: key);

  @override
  State<Slider_Pages> createState() => _Slider_PagesState();
}

class _Slider_PagesState extends State<Slider_Pages> {
  PageController pageController = PageController(initialPage: 0);
  int currentIndexPage = 0;
  String buttonText = 'Next';
  double percent = 0.34;

  List<Map<String, dynamic>> sliderList = [
    {
      "icon": 'images/onboard1.png',
      "title": 'Keep healthy work-life balance',
      "description":
          'Lorem ipsum dolor sit amet, consectetuer adipisci elit, sed diam nonummy nibh euismod tincidunt u laoreet dolore magna aliquam erat volutpat. Ut wi',
    },
    {
      "icon": 'images/onboard2.png',
      "title": 'Track your work & get result',
      "description":
          'Lorem ipsum dolor sit amet, consectetuer adipisci elit, sed diam nonummy nibh euismod tincidunt u laoreet dolore magna aliquam erat volutpat. Ut wi',
    },
    {
      "icon": 'images/onboard3.png',
      "title": 'Stay organized with team',
      "description":
          'Lorem ipsum dolor sit amet, consectetuer adipisci elit, sed diam nonummy nibh euismod tincidunt u laoreet dolore magna aliquam erat volutpat. Ut wi',
    },
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      const LogIn_Page().launch(context);
                      // Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => LogIn_Page()));
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            Stack(
              // alignment: Alignment.bottomCenter,
              children: [
                PageView.builder(
                  itemCount: sliderList.length,
                  controller: pageController,
                  onPageChanged: (int index) =>
                      setState(() => currentIndexPage = index),
                  itemBuilder: (_, index) {
                    return Column(
                      children: [
                        Image.network(
                          sliderList[index]['icon'],
                          width: MediaQuery.of(context).size.width,
                          height: 400,
                        ),
                        Text(
                          sliderList[index]['title'].toString() ,
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        Text(
                            sliderList[index]['description'].toString(),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 5,
                        ),
                      ],
                    );
                  },
                ),
                // Row(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.all(8.0),
                //       child: DotIndicator(
                //         currentDotSize: 10,
                //         dotSize: 6,
                //         pageController: pageController,
                //         pages: sliderList,
                //         indicatorColor: kMainColor,
                //         unselectedIndicatorColor: Colors.grey,
                //       ),
                //     ),
                //     const Spacer(),
                //     Padding(
                //       padding: const EdgeInsets.all(8.0),
                //       child: CircularPercentIndicator(
                //         radius: 40.0,
                //         lineWidth: 3.0,
                //         progressColor: kMainColor,
                //         percent: percent,
                //         animation: true,
                //         center: GestureDetector(
                //           onTap: () {
                //             setState(() {
                //               currentIndexPage < 2
                //                   ? percent = percent + 0.33
                //                   : percent = 1.0;
                //               currentIndexPage < 2
                //                   ? pageController.nextPage(
                //                   duration: const Duration(
                //                       microseconds: 3000),
                //                   curve: Curves.bounceInOut)
                //                   : Navigator.push(
                //                 context,
                //                 MaterialPageRoute(
                //                     builder: (context) =>
                //                     const LogIn_Page()),
                //               );
                //             });
                //           },
                //           child: Container(
                //
                //             // padding: const EdgeInsets.all(20),
                //               width: 80,
                //               height: 80,
                //               child: ElevatedButton(
                //                 onPressed: () {},
                //                 child: Icon(Icons.arrow_forward_ios),
                //                 style: ElevatedButton.styleFrom(
                //                   shape: CircleBorder(),
                //                   padding: EdgeInsets.all(3),
                //                 ),
                //               )),
                //         ),
                //       ),
                //     ),
                //
                //   ],
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

