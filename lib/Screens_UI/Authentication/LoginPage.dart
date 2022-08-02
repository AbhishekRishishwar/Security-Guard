import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:security_guard/Data/Color.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:security_guard/Screens_UI/Authentication//Forgot_Password.dart';
import 'package:security_guard/Screens_UI/Authentication//SignupPage.dart';

class LogIn_Page extends StatefulWidget {
  const LogIn_Page({Key? key}) : super(key: key);

  @override
  State<LogIn_Page> createState() => _LogIn_PageState();
}

class _LogIn_PageState extends State<LogIn_Page> with TickerProviderStateMixin {
  late TabController _tabController;
  bool isPasswordVisible = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
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
        // height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Sign In now to begin an amazing journey",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    )
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
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.elliptical(50, 50))),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CountryCodePicker(
                            onChanged: print,
                            // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                            initialSelection: 'IN',
                            // favorite: ['+39','FR'],
                            // optional. Shows only country name and flag
                            showCountryOnly: false,
                            // optional. Shows only country name and flag when popup is closed.
                            showOnlyCountryWhenClosed: false,
                            // optional. aligns the flag and the Text left
                            alignLeft: false,
                          ),
                          Expanded(
                              child: TextFormField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 16),
                              isDense: true,
                              labelText: "Phone",
                            ),
                          ))
                        ],
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: !isPasswordVisible,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 16),
                            isDense: true,
                            labelText: "Password",
                            prefixIcon: Icon(Icons.password_rounded),
                            suffix: IconButton(
                              onPressed: () {
                                isPasswordVisible = !isPasswordVisible;
                                setState(() {});
                              },
                              icon: Icon((isPasswordVisible)
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Text(
                                  "LogIn",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ))),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Forgot_Password()));
                          },
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.blue),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "You don't have an account?",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Signup_Page()));
                              },
                              child: Text(
                                "   SignUp here",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.deepOrange),
                              )),
                        ],
                      )
                    ],
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
