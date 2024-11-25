import 'package:apptest1/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class RegisterAppbar extends StatelessWidget {
  const RegisterAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/back.svg",
          colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
        ),
        Text("New Visitor Pre-access",
            style: AppStyles.style24font500white(context))
      ],
    );
  }
}
