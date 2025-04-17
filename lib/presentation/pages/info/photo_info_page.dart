import 'package:flutter/material.dart';
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
    viewModel = PhotoInfoViewModel(GetPhotoInfoUseCase(
        PhotoInfoRepositoryImpl(PhotoInfoDataSourceImpl())));
    viewModel.getPhotoInfo(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).width,
              viewModel.state.photo!.previewURL),
          const SizedBox(
            height: 20,
          ),
          Text(
            'user : ${viewModel.state.photo!.user}',
            style: AppTextStyle.body,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'user : ${viewModel.state.photo!.user}',
            style: AppTextStyle.body,
          ),
        ],
      ),
    );
  }
}
