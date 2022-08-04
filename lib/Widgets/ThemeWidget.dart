import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Main_Theme{
  static mainTheme ({required  width, required String pageName, List<Widget>? actionList , required Widget widget }){
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: actionList,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Colors.blue,
        child: Column(
          children: [
            SizedBox(
              width: width,
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pageName,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                // height: 600,
                width: width,
                // height: height,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.vertical(top: Radius.elliptical(50, 50))),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [widget],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}