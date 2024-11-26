import 'package:apptest1/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class VistorDetailsButton extends StatelessWidget {
  const VistorDetailsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Container(
            padding: const EdgeInsets.symmetric(vertical: 18),
            decoration: BoxDecoration(
              color: const Color(0xFF2CBBD2),
              borderRadius: BorderRadius.circular(50),
            ),
            child: SizedBox(
              width: double.infinity,
              child: Center(
                child: Text(
                  "Share This QR Code",
                  style: AppStyles.style16font500white(context),
                ),
              ),
            )));
  }
}
