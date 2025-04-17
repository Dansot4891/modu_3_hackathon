import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modu_3_hackathon/core/modules/state/state_handling.dart';
import 'package:modu_3_hackathon/core/router/routes.dart';
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
                      return Expanded(
                        child: StateHandling(
                          state.state,
                          init: const Center(
                            child: Text('검색어를 입력해주세요.'),
                          ),
                          loading: const Center(
                            child: CircularProgressIndicator(),
                          ),
                          error: Center(
                            child: Text(state.errorMessage),
                          ),
                          success: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 34,
                                    crossAxisSpacing: 36),
                            itemCount: state.photos.length,
                            itemBuilder: (context, index) {
                              final photo = state.photos[index];
                              return InkWell(
                                onTap: () {
                                  context.pushNamed(AppRoutes.info.name,
                                      pathParameters: {'id': '${photo.id}'});
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    photo.previewURL,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
