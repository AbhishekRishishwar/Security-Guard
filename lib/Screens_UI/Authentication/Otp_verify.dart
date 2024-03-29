import 'package:flutter/material.dart';
import 'package:security_guard/Constant.dart';
import 'package:security_guard/Global_Components/otp_form.dart';

class OTP_Verify extends StatefulWidget {
  const OTP_Verify({Key? key}) : super(key: key);

  @override
  State<OTP_Verify> createState() => _OTP_VerifyState();
}

class _OTP_VerifyState extends State<OTP_Verify> {
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
                      "Enter OTP",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Don't share your OTP, be careful",
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
                      SizedBox(
                        height: 20,
                      ),
                      const OtpForm(),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(

                        padding: const EdgeInsets.all(10.0),
                        decoration: kButtonDecoration.copyWith(color: kTitleColor.withOpacity(0.1)),
                        child: Text(
                          'Resend Otp',
                          style: kTextStyle.copyWith(
                              color: kTitleColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                              'You can request otp again after ',
                              style: kTextStyle.copyWith(
                                color: kAlertColor,
                              ),
                            ),
                            TextSpan(
                              text:
                              '1:12',
                              style: kTextStyle.copyWith(
                                fontWeight: FontWeight.bold,
                                color: kAlertColor,
                              ),
                            ),
                          ],
                        ),
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
                                  "Verify",
                                  style: TextStyle(fontSize: 25),
                                ),
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
