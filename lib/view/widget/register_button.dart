import 'package:apptest1/core/utils/app_styles.dart';
import 'package:apptest1/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key, required this.text, this.onPressed});
  final String text;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 32),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFF157C8C),
              Color(0xFF2CBBD2),
            ],
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: AppStyles.style16font500white(context),
            ),
            const Spacer(),
            SvgPicture.asset(Assets.icons.button2),
          ],
        ),
      ),
    );
  }
}
