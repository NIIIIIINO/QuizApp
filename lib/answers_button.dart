import 'package:flutter/material.dart';

class AnswersButton extends StatelessWidget {
  const AnswersButton( {
    super.key,
    required this.answer,
    required this.onTap,
  });

  final String answer;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 33, 1, 95),
              foregroundColor: Colors.white,
            ),
            child: Text(
                 answer,
                  style: const TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
          ),
        ),
      ],
    );
  }
}
