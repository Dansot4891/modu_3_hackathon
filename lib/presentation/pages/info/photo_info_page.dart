import 'package:flutter/material.dart';
import 'package:modu_3_hackathon/core/modules/state/state_handling.dart';
import 'package:modu_3_hackathon/core/style/app_style.dart';
import 'package:modu_3_hackathon/presentation/pages/info/photo_info_view_model.dart';

class PhotoInfoPage extends StatelessWidget {
  final int id;
  final PhotoInfoViewModel viewModel;
  const PhotoInfoPage(this.id, {required this.viewModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListenableBuilder(
          listenable: viewModel,
          builder: (context, child) {
            final state = viewModel.state;
            if (state.photo == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return StateHandling(state.state,
                init: const Center(
                  child: CircularProgressIndicator(),
                ),
                loading: const Center(
                  child: CircularProgressIndicator(),
                ),
                error: Center(
                  child: Text(state.errorMessage),
                ),
                success: success(
                  context,
                  url: state.photo!.previewURL,
                  user: state.photo!.user,
                  tags: state.photo!.tags,
                ));
          }),
    );
  }

  Column success(
    BuildContext context, {
    required String url,
    required String user,
    required String tags,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).width,
          url,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'user : $user',
            style: AppTextStyle.body,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'tags : $tags',
            style: AppTextStyle.body,
          ),
        ),
      ],
    );
  }
}
