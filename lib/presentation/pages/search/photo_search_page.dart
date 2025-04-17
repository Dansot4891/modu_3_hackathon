import 'package:flutter/material.dart';
import 'package:modu_3_hackathon/core/modules/state/base_state.dart';
import 'package:modu_3_hackathon/presentation/pages/search/photo_search_view_model.dart';
import 'package:modu_3_hackathon/presentation/widgets/search_text_field.dart';

class PhotoSearchPage extends StatefulWidget {
  final PhotoSearchViewModel viewModel;
  const PhotoSearchPage(this.viewModel, {super.key});

  @override
  State<PhotoSearchPage> createState() => _PhotoSearchPageState();
}

class _PhotoSearchPageState extends State<PhotoSearchPage> {
  final _searchText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                SearchTextField(
                  controller: _searchText,
                  onTap: () async {
                    if (_searchText.text.isEmpty) {
                      print('no data');
                      return;
                    }
                    widget.viewModel.getPhotos(_searchText.text);
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                ListenableBuilder(
                    listenable: widget.viewModel,
                    builder: (context, child) {
                      final state = widget.viewModel.state;
                      if (state.photos.isEmpty) {
                        return const SizedBox();
                      }
                      switch (state.state) {
                        case BaseState.loading:
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        case BaseState.error:
                          return Center(
                            child: Text(state.errorMessage),
                          );
                        case BaseState.success:
                          return Expanded(
                              child: GridView.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          mainAxisSpacing: 34,
                                          crossAxisSpacing: 36),
                                  itemBuilder: (context, index) {
                                    final photo = state.photos[index];
                                    return ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                        'https://i.namu.wiki/i/d1A_wD4kuLHmOOFqJdVlOXVt1TWA9NfNt_HA0CS0Y_N0zayUAX8olMuv7odG2FiDLDQZIRBqbPQwBSArXfEJlQ.webp',
                                        fit: BoxFit.cover,
                                      ),
                                    );
                                  }));
                      }
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
