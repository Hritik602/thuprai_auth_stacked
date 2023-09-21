import 'package:thuprai_stacked_architecture/network/api_error.dart';
import 'package:thuprai_stacked_architecture/network/network_common.dart';
import 'package:thuprai_stacked_architecture/ui/views/home/model/book_model.dart';

class HomeService {
  static const String apiEndpoints = "book/new-releases/";

  Future<BookReleaseModel> fetchAllNewReleaseBooks(int page) async {
    try {
      var res = await NetworkCommon.dio
          .get(apiEndpoints, queryParameters: _queryParam(page: page));
      return BookReleaseModel.fromJson(res.data);
    } catch (e) {
      return BookReleaseModel.withException(ApiError.fromDioError(e));
    }
  }

  static _queryParam({int? page}) {
    Map<String, dynamic> map = {};
    if (page != null) {
      map.addAll({"page": page});
    }
    return map;
  }
}
