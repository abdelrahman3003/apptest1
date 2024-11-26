import 'package:apptest1/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class AppTextformField extends StatelessWidget {
  const AppTextformField({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.isValid = true,
     this.controller,
  });
  final String icon, title, subtitle;
  final bool isValid;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border:
                  isValid ? null : Border.all(color: Colors.red, width: 1.3),
              borderRadius: BorderRadius.circular(18)),
          margin: const EdgeInsets.all(8),
          child: ListTile(
            leading: SvgPicture.asset(
              icon,
              color: isValid ? AppColors.primaryColor : Colors.red,
            ),
            title: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            subtitle: TextFormField(
              controller: controller,
              style: const TextStyle(fontSize: 14, color: Colors.black),
              decoration: InputDecoration(
                isDense: true,
                border: InputBorder.none,
                contentPadding: const EdgeInsets.all(0),
                hintText: subtitle,
                hintStyle: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ),
          ),
        ),
        isValid
            ? const SizedBox()
            : const Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  "This Field is Required",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                  ),
                ),
              ),
      ],
    );
  }
}
