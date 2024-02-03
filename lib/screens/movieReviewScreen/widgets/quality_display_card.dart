import 'package:bookngo/utils/constants/string_constants.dart';
import 'package:flutter/material.dart';

class QualityDisplayCard extends StatelessWidget {
  const QualityDisplayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Card(
            color: Colors.grey[200],
            child: const Padding(
                padding: EdgeInsets.all(3.0),
                child: Text(StringConstants.kHD,
                    softWrap: true,
                    style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500, color: Colors.black)))),
        Card(
            color: Colors.grey[200],
            child: const Padding(
                padding: EdgeInsets.all(3.0),
                child: Text(StringConstants.kVerify,
                    softWrap: true,
                    style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500, color: Colors.black))))
      ],
    );
  }
}
