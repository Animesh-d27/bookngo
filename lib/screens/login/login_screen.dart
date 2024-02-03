import 'package:bookngo/configs/app_color.dart';
import 'package:bookngo/screens/verification/verification_otp_screen/otp_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String phoneNumber = '';
  bool buttonEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 90,
                              width: 90,
                              child: Image.asset('assets/images/ticketcounter.png',
                                  fit: BoxFit.fitHeight)),
                          const Text('BooknGo',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.redTheme,
                                  fontSize: 50,
                                  fontFamily: 'Urbanist')),
                          const Text('Enter Number to Continue',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Urbanist')),
                          const SizedBox(height: 50),
                          const Align(
                              alignment: Alignment.centerLeft,
                              child: Text('PHONE NUMBER',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: AppColor.redTheme,
                                      fontSize: 20,
                                      fontFamily: 'Urbanist'))),
                          const SizedBox(height: 10),
                          IntlPhoneField(
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: AppColor.redTheme)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.redTheme))),
                              initialCountryCode: 'IN',
                              onChanged: (phone) {
                                setState(() {
                                  phoneNumber = phone.completeNumber;
                                  buttonEnabled = phoneNumber.isNotEmpty;
                                });
                              }),
                          const Text(
                              'A 4-digit OTP will be sent via SMS to verify your phone number.',
                              style: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 17,
                                  fontFamily: 'Urbanist')),
                          const SizedBox(height: 100),
                          SizedBox(
                              height: 50,
                              width: 300,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                            const OtpVerificationScreen()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.redAccent,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(15))),
                                  child: const Text('Continue',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Urbanist'))))
                        ])))));
  }
}