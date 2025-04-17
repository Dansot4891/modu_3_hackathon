import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:modu_3_hackathon/core/constants/api/api_urls.dart';
import 'package:modu_3_hackathon/core/constants/key/api_key.dart';
import 'package:modu_3_hackathon/data/search/data_source/photo_data_source.dart';
import 'package:modu_3_hackathon/data/search/dto/photo_dto.dart';
import 'package:modu_3_hackathon/domain/search/model/pixabay_params.dart';

class PhotoDataSourceImpl implements PhotoDataSource {
  final String _path = ApiUrls.pixabayApiUrl;

  @override
  Future<PhotoResultDto> getPhotos(String tags) async {
    final queries = PixabayParams(tags: tags, key: ApiKey.pixabayKey);
    final resp = await http.get(Uri.parse(_path + queries.toQuery()));
    final photoDto = PhotoResultDto.fromJson(jsonDecode(resp.body));
    return photoDto;
  }
}
