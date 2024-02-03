import 'package:bookngo/utils/constants/string_constants.dart';
import 'package:flutter/material.dart';

class TicketBookedStatusContainer extends StatelessWidget {
  const TicketBookedStatusContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        width: 500,
        decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 3, spreadRadius: 3)
            ],
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: 35,
                  width: 105,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: const Center(
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        Icon(Icons.alt_route_rounded,
                            color: Colors.white, size: 20),
                        SizedBox(width: 2),
                        Text(StringConstants.kTrending,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white))
                      ]))),
              const Text(StringConstants.kNumbers,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.green)),
              const Text(StringConstants.kTicketsBookedInLastHour,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54))
            ]));
  }
}
