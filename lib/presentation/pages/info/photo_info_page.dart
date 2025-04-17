import 'package:flutter/material.dart';
import 'package:modu_3_hackathon/core/modules/state/state_handling.dart';
import 'package:modu_3_hackathon/core/style/app_style.dart';
import 'package:modu_3_hackathon/data/info/data_source/impl/photo_data_source_impl.dart';
import 'package:modu_3_hackathon/data/info/repository_impl/photo_info_repository_impl.dart';
import 'package:modu_3_hackathon/domain/info/use_case/get_photo_info_use_case.dart';
import 'package:modu_3_hackathon/presentation/pages/info/photo_info_view_model.dart';

class PhotoInfoPage extends StatefulWidget {
  final int id;
  const PhotoInfoPage(this.id, {super.key});

  @override
  State<PhotoInfoPage> createState() => _PhotoInfoPageState();
}

class _PhotoInfoPageState extends State<PhotoInfoPage> {
  late PhotoInfoViewModel viewModel;

  @override
  void initState() {
    print(widget.id);
    viewModel = PhotoInfoViewModel(GetPhotoInfoUseCase(
        PhotoInfoRepositoryImpl(PhotoInfoDataSourceImpl())));
    viewModel.getPhotoInfo(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListenableBuilder(
          listenable: viewModel,
          builder: (context, child) {
            final state = viewModel.state;
            if (state.photo == null) {
              return const SizedBox();
            }
            print(state.photo.toString());
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
                  url: state.photo!.previewURL,
                  user: state.photo!.user,
                  tags: state.photo!.tags,
                ));
          }),
    );
  }

  Column success({
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
