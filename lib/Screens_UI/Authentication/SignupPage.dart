import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:security_guard/Data/Color.dart';
import 'package:security_guard/Screens_UI/Authentication//LoginPage.dart';

class Signup_Page extends StatefulWidget {
  const Signup_Page({Key? key}) : super(key: key);

  @override
  State<Signup_Page> createState() => _Signup_PageState();
}

class _Signup_PageState extends State<Signup_Page> {

  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
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
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Chalo Bacchha Account Bnao ",
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
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                          isDense: true,
                          labelText: "Full Name",
                          prefixIcon: Icon(Icons.person_outlined),
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value){
                          if(value!.isEmpty){
                            return "invaild mail";
                          }
                        },
                        decoration: InputDecoration(
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                          isDense: true,
                          labelText: "Email",
                          prefixIcon: Icon(Icons.mail_outline),
                        ),
                      ),
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
                                  contentPadding:
                                  EdgeInsets.symmetric(vertical: 4, horizontal: 16),
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
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                            isDense: true,
                            labelText: "Password",
                            prefixIcon: Icon(Icons.password_rounded),
                            suffix: IconButton(onPressed: (){
                              isPasswordVisible = !isPasswordVisible;
                              setState(() {

                              });
                            }, icon: Icon((isPasswordVisible)?Icons.visibility:Icons.visibility_off),)),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: !isPasswordVisible,
                        decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                            isDense: true,
                            labelText: "Confirm Password",
                            prefixIcon: Icon(Icons.password_rounded),
                            suffix: IconButton(onPressed: (){
                              isPasswordVisible = !isPasswordVisible;
                              setState(() {

                              });
                            }, icon: Icon((isPasswordVisible)?Icons.visibility:Icons.visibility_off),)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(value: true, onChanged: (value){}),
                          Text("I accept all"),
                          InkWell(onTap: (){},
                              child: Text("Terms & Conditions")
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                              onPressed: () {}, child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("Sign Up", style: TextStyle(fontSize: 25),),
                          ))),
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