import 'package:flutter/material.dart';
import 'package:modu_3_hackathon/core/style/app_color.dart';
import 'package:modu_3_hackathon/core/style/app_style.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onTap;
  const SearchTextField(
      {required this.onTap, required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: AppTextStyle.hintText.copyWith(color: AppColor.black),
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0, horizontal: 13),
          hintText: 'Search',
          hintStyle: AppTextStyle.hintText,
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColor.primary100,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColor.primary100,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColor.primary100,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          suffixIcon: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.search,
              color: AppColor.primary100,
            ),
          )),
    );
  }
}
