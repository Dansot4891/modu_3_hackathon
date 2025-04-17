import 'package:flutter/material.dart';
import 'package:modu_3_hackathon/core/style/app_color.dart';
import 'package:modu_3_hackathon/core/style/app_style.dart';

class PhotoSearchPage extends StatefulWidget {
  const PhotoSearchPage({super.key});

  @override
  State<PhotoSearchPage> createState() => _PhotoSearchPageState();
}

class _PhotoSearchPageState extends State<PhotoSearchPage> {
  final _searchText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: _searchText,
              decoration: const InputDecoration(
                  hintText: 'Search',
                  hintStyle: AppTextStyle.hintText,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: AppColor.primary100,
                  ))),
            )
          ],
        ),
      ),
    );
  }
}
