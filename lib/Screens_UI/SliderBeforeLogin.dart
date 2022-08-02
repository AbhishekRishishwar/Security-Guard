import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:security_guard/Screens_UI/LoginPage.dart';
import 'package:security_guard/Widgets/ImagesWidgets.dart';

class Slider_Pages extends StatefulWidget {
  const Slider_Pages({Key? key}) : super(key: key);

  @override
  State<Slider_Pages> createState() => _Slider_PagesState();
}

class _Slider_PagesState extends State<Slider_Pages> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class Slider_First extends StatefulWidget {
  const Slider_First({Key? key}) : super(key: key);

  @override
  State<Slider_First> createState() => _Slider_FirstState();
}

class _Slider_FirstState extends State<Slider_First> {
  String imageUrl =
      "https://image.shutterstock.com/image-vector/oh-bite-me-fishing-svg-260nw-1883166919.jpg";

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
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LogIn_Page()));
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Image.network(
                imageUrl,
                width: MediaQuery.of(context).size.width,
                height: 400,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Keep Healthy \nWork Life Balance",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Lorem jhakkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkdfjbvlllllllllllllllllllllllhdkshlffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffasbdskhlvbalkhdssdgdfsgsdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                    width: 80,
                    height: 80,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Slider_Second()));
                      },
                      child: Icon(Icons.arrow_forward_ios),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(24),
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Slider_Second extends StatefulWidget {
  const Slider_Second({Key? key}) : super(key: key);

  @override
  State<Slider_Second> createState() => _Slider_SecondState();
}

class _Slider_SecondState extends State<Slider_Second> {
  String imageUrl1 =
      "https://t4.ftcdn.net/jpg/02/29/99/15/360_F_229991534_4gV4PSVqsF2Ekswa0dCfdyIUL33Gvd9p.jpg";

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
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LogIn_Page()));
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Image.network(
                imageUrl1,
                width: MediaQuery.of(context).size.width,
                height: 400,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Keep Healthy \nWork Life Balance",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Lorem jhakkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkdfjbvlllllllllllllllllllllllhdkshlffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffasbdskhlvbalkhdssdgdfsgsdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                    width: 80,
                    height: 80,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Slider_third()));
                      },
                      child: Icon(Icons.arrow_forward_ios),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(24),
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Slider_third extends StatefulWidget {
  const Slider_third({Key? key}) : super(key: key);

  @override
  State<Slider_third> createState() => _Slider_thirdState();
}

class _Slider_thirdState extends State<Slider_third> {
  String imageUrl2 =
      "https://www.svgfiles.us/wp-content/uploads/Disney-friends-svg-free-300x300.jpg";
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
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LogIn_Page()));
                    },
                    child: Text(
                      "",
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Image.network(
                imageUrl2,
                width: MediaQuery.of(context).size.width,
                height: 400,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Keep Healthy \nWork Life Balance",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Lorem jhakkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkdfjbvlllllllllllllllllllllllhdkshlffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffasbdskhlvbalkhdssdgdfsgsdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                    width: 80,
                    height: 80,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LogIn_Page()));
                      },
                      child: Icon(Icons.arrow_forward_ios),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(24),
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
