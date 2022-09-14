import 'package:flutter/material.dart';

class SummaryWidget extends StatelessWidget {
  final String title;
  final String amount;
  const SummaryWidget({
    Key? key,
    required this.title,
    required this.amount
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),
        ),
        const SizedBox(height: 7),
        Text(
          "Ksh $amount",
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
      ],
    );
  }
}