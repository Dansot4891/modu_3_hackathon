import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:modu_3_hackathon/core/constants/api/api_urls.dart';
import 'package:modu_3_hackathon/core/constants/key/api_key.dart';
import 'package:modu_3_hackathon/data/dto/photo_result_dto.dart';
import 'package:modu_3_hackathon/data/info/data_source/photo_info_data_source.dart';
import 'package:modu_3_hackathon/data/info/dto/photo_info_dto.dart';
import 'package:modu_3_hackathon/domain/model/pixabay_params.dart';

class PhotoInfoDataSourceImpl implements PhotoInfoDataSource {
  final String _path = ApiUrls.pixabayApiUrl;

  @override
  Future<PhotoResultDto<PhotoInfoDto>> getPhotoInfo(int id) async {
    final queries = PixabayParams(id: id, key: ApiKey.pixabayKey);
    final resp = await http.get(Uri.parse(_path + queries.toQuery()));
    final photoDto = PhotoResultDto<PhotoInfoDto>.fromJson(
      jsonDecode(resp.body),
      (json) => PhotoInfoDto.fromJson(json as Map<String, dynamic>),
    );
    return photoDto;
  }
}
