import 'package:bookngo/screens/homeScreen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
        width: 56,
        height: 60,
        textStyle: const TextStyle(fontSize: 22, color: Colors.black),
        decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.transparent)));
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 90,
                              width: 90,
                              child: Image.asset('assets/images/otp.png',
                                  fit: BoxFit.fitHeight)),
                          const SizedBox(height: 30),
                          const Text(
                              'A 4-digit OTP has been sent to the registered no. 91XXXX6622',
                              textAlign: TextAlign.center),
                          const SizedBox(height: 30),
                          Pinput(
                              length: 5,
                              defaultPinTheme: defaultPinTheme,
                              focusedPinTheme: defaultPinTheme.copyWith(
                                  decoration: defaultPinTheme.decoration!
                                      .copyWith(
                                      border: Border.all(
                                          color: Colors.redAccent))),
                              onCompleted: (pin) => debugPrint(pin)),
                          const SizedBox(height: 15),
                          const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Didn\'t receive the code?  ',
                                    style: TextStyle(
                                        color: Colors.black26,
                                        fontSize: 17,
                                        fontFamily: 'Urbanist')),
                                Text('Resend',
                                    style: TextStyle(
                                        color: Colors.redAccent, fontSize: 14))
                              ]),
                          const SizedBox(height: 150),
                          SizedBox(
                              height: 50,
                              width: 300,
                              child: ElevatedButton(
                                  onPressed: () {Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                          const HomesScreen()));},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.redAccent,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(15))),
                                  child: const Text('Verify',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Urbanist'))))
                        ])))));
  }
}