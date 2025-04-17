import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          TextField(
            controller: _searchText,
          )
        ],
      ),
    );
  }
}
