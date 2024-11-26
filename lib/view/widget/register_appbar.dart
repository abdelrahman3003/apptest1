import 'package:apptest1/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class RegisterAppbar extends StatelessWidget {
  const RegisterAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: ListTile(
        leading: SvgPicture.asset(
          "assets/icons/back.svg",
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
        ),
        title: Center(
          child: Text("New Visitor Pre-access",
              style: AppStyles.style24font400white(context)),
        ),
        subtitle: Center(
          child: Text("New Visitor Pre-access",
              style: AppStyles.style14font400white(context)),
        ),
      ),
    );
  }
}
